require("pry")
require_relative("../models/student")


student1 = Student.new({
  "first_name" => "Katy",
  "last_name" => "Preston",
  "house" => "Slytherin",
  "age" => 25
  })

  student2 = Student.new({
    "first_name" => "Luis",
    "last_name" => "Tejero",
    "house" => "Hufflepuff",
    "age" => 24
    })

binding.pry
nil
    # student1.save
    # student2.save
