json.(@student, :id, :name)

json.tests @student.tests_taken do |tt|
  json.name tt.test.name
  json.score tt.score
end
