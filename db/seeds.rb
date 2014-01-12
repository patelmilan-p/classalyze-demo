# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
students = Student.create([{name: 'Student 1'}, {name: 'Student 2'}, {name: 'Student 3'}, {name: 'Student 4'}, {name: 'Student 5'},
                           {name: 'Student 6'}, {name: 'Student 7'}, {name: 'Student 8'}, {name: 'Student 9'}, {name: 'Student 10'},
                           {name: 'Student 11'}, {name: 'Student 12'}, {name: 'Student 13'}, {name: 'Student 14'}, {name: 'Student 15'},
                           {name: 'Student 16'}, {name: 'Student 17'}, {name: 'Student 18'}, {name: 'Student 19'}, {name: 'Student 20'}])

classroom = Classroom.create({name: 'Class 9A'})

students.each do |student|
  classroom.students << student
end
