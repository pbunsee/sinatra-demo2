require './app.rb'

students = [ %w(Jamie
Sabiha
Anthony),

%w(Katie
Neo
Stephanie-M),

%w(James
Mac
Vinson),

%w(Gwen
Farkhan
Pranesha),

%w(Preston
Shad),

%w(Reuben
Jacob),

%w(Stephanie-S
Lindsay
Andy),

%w(Andrew
Ted),

%w(Oggi
Tom),

%w(Anita
Damion
Nneoma)]

students.each do |ss|
  g = Group.create
  ss.each do |s|
    g.users << User.create(name: s)
  end
end
