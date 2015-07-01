require 'sinatra'
require 'sinatra/activerecord'
require './models.rb'

set :database, "sqlite3:nottwitter.sqlite3"

get '/sign-up' do
  erb :sign_up
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
