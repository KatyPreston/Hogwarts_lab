require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student')
require_relative('./models/house')

#READ students
get '/students' do
  @students = Student.all
  @houses = House.all
  erb(:index)
end

# CREATE a new student
get "/students/new" do
  @houses= House.all
  erb(:new)
end

post "/students" do
  @student = Student.new(params)
  @student.save()
  erb (:create)
end

post "/students/:id/delete" do
  @student = Student.find(params[:id])
  @student.delete()
  redirect "/students"
end
