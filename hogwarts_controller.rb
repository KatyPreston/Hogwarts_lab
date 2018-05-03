require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student')

#READ students
get '/students' do
  @students = Student.all
  erb(:index)
end

# CREATE a new student
get "/students/new" do
  erb(:new)
end

post "/students" do
  @student = Student.new(params)
  @student.save()
  erb (:create)
end
