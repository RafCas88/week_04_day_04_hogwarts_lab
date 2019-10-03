require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )

require_relative( './models/student' )
require_relative( './models/house')
also_reload( './models/*' )

get '/students' do
  @students = Student.all()
  erb( :index )
end

get '/students/new' do
  @houses = House.all()
  @house_names = @houses.map{|house| house.name}
  erb( :new )
end

post '/students' do
  @student = Student.new( params )
  @student.save()
  erb( :create )
end
