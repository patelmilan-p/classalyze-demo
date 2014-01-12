json.array! @student.tests_taken do |tt|
  json.x tt.test.name
  json.y tt.score
end
