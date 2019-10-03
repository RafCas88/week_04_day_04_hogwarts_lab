require_relative('../models/student')

student1 = Student.new({
  "first_name" => "Hannah",
  "last_name" => "Abbot",
  "age" => 11,
  "house" => "Hufflepuff"
  })

  student2 = Student.new({
    "first_name" => "Vincent",
    "last_name" => "Crabbe",
    "age" => 11,
    "house" => "Slytherin"
    })

    student1.save
    student2.save
