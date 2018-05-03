require("pry")
require_relative("../models/student")
require_relative("../models/house")

house1 = House.new({
  "name" => "Gryffindor",
  "url" => "https://i.ebayimg.com/images/g/L50AAOSwRsZZ3NTM/s-l1600.jpg"
  })

house2 = House.new({
  "name" => "RavenClaw",
  "url" => "https://i.pinimg.com/originals/e7/52/93/e7529322bb6c96e6f299a0d8b0e83f59.jpg"
  })

house3 = House.new({
  "name" => "Slytherin",
  "url" => "https://chrisy58.files.wordpress.com/2016/02/harry-potter-house-logos-slytherin-3.png"
  })

house4 = House.new({
  "name" => "Hufflepuff",
  "url" => "https://images-na.ssl-images-amazon.com/images/I/71Uv8XlqtzL._UX342_.jpg"
  })

  house1.save()
  house2.save()
  house3.save()
  house4.save()



  student1 = Student.new({
    "first_name" => "Katy",
    "last_name" => "Preston",
    "house_id" => house3.id,
    "age" => 25
    })

    student2 = Student.new({
      "first_name" => "Luis",
      "last_name" => "Tejero",
      "house_id" => house4.id,
      "age" => 24
      })

  
  student1.save
  student2.save

binding.pry
nil
