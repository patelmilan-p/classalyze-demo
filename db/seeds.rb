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

tests = Test.create([{name: "FA1"}, {name: "FA2"}, {name: "SA1"}])

students.each do |student|
  classroom.students << student
end

scores = [[66, 76, 61], [48, 84, 97], [91, 92, 49], [78, 73, 76], [52, 62, 63],
          [84, 36, 69], [62, 88, 94], [65, 86, 58], [94, 36, 42], [90, 97, 98],
          [59, 58, 90], [49, 44, 73], [70, 73, 30], [77, 32, 34], [47, 40, 35],
          [78, 87, 81], [77, 39, 83], [43, 44, 35], [48, 87, 31], [43, 79, 45]]

(0..19).to_a.each do |i|
  student = Student.all.to_a[i]

  [0,1,2].each do |j|
    test = Test.all.to_a[j]
    student.tests_taken.create({test: test, score: scores[i][j]})
  end
end
