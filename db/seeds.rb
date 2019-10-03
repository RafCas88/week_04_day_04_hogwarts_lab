require('pry')
require_relative('../models/student')
require_relative('../models/house')

house1 = House.new({
  "name" => "Gryffindor"
  })

  house2 = House.new({
    "name" => "Hufflepuff"
    })

    house3 = House.new({
      "name" => "Ravenclaw"
      })

      house4 = House.new({
        "name" => "Slytherin"
        })

        house1.save
        house2.save
        house3.save
        house4.save

        student1 = Student.new({
          "first_name" => "Hannah",
          "last_name" => "Abbot",
          "age" => 11,
          "house_id" => house2.id
          })

          student2 = Student.new({
            "first_name" => "Vincent",
            "last_name" => "Crabbe",
            "age" => 11,
            "house_id" => house4.id
            })

            student1.save
            student2.save

binding.pry
nil
