require 'sinatra'
require 'sinatra/activerecord'
require './models.rb'
require 'bundler/setup'
require 'rack-flash'

enable :sessions

set :database, "sqlite3:nottwitter.sqlite3"


get '/sign-up' do
  erb :sign_up
end

post '/sign-in' do
  @user = User.find_by_username(params[:username])
  if @user.password == params[:password]
    session[:user_id] = @user.id
    params = nil
    redirect '/'
  else
    "Invalid login"
  end
end

post '/sign-up' do
  confirmation = params[:confirm_password]

  if confirmation == params[:user][:password]
    @user = User.create(params[:user])
    "SIGNED UP #{@user.username}"
  else
    "Your password & confirmation did not match, try again"
  end
end

get '/' do
  @groups = Group.all
  erb :index
end

get '/sign-out' do
  session[:user_id] = nil
  redirect '/'
end

def current_user
  if session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
end
