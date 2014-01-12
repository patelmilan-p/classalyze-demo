json.(@classroom, :id, :name)

json.students @classroom.students, :id, :name
