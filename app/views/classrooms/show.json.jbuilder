student = @classroom.students.to_a.first
student7 = @classroom.students.where(name: "Student 7").first

json.classroom student.tests.to_a.each do |test|
  json.x test.name
  json.y average_score(test)
end

json.student7 student7.tests_taken do |tt|
  json.x tt.test.name
  json.y tt.score
end
