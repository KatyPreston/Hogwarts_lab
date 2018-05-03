require_relative("../db/sql_runner")

class Student

  attr_reader(:first_name, :last_name, :house_id, :age, :id)

  def initialize(options)
    @id = options["id"].to_i
    @first_name = options["first_name"]
    @last_name = options["last_name"]
    @house_id = options["house_id"].to_i
    @age = options["age"].to_i
  end

  def fancy_name()
    return "#{@first_name} #{@last_name}"
  end

  def house_info()
  sql = "SELECT houses.* FROM houses WHERE houses.id = $1"
  values = [@house_id]
  house_hash = SqlRunner.run(sql, values)
  house = House.new(house_hash.first)
  return house
end

  def save()
    sql = "INSERT INTO students
    (
      first_name,
      last_name,
      house_id,
      age
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING *"
    values = [@first_name, @last_name, @house_id, @age]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM students WHERE id = $1"
    values = [@id]
    student_to_remove = SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run( sql )
    result = students.map { |student| Student.new( student ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    student = SqlRunner.run( sql, values )
    result = Student.new( student.first )
    return result
  end


end
