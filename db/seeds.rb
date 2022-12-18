# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.destroy_all
Student.destroy_all

sam  = Instructor.create(name: "Sam")
adam   = Instructor.create(name: "Adam")
mustafa = Instructor.create(name: "Mustafa")

Student.create(name: "Caleb", age: 25, major: "Computer Science", instructor_id: mustafa.id)
Student.create(name: "Gian", age: 22, major: "Mathmatics", instructor_id: adam.id)
Student.create(name: "Anam", age: 25, major: "Engineering", instructor_id: sam.id)
Student.create(name: "Vien", age: 23, major: "Biology", instructor_id: adam.id)
Student.create(name: "Lindsay", age: 23, major: "Engineering", instructor_id: adam.id)
Student.create(name: "Aaron", age: 23, major: "Biology", instructor_id: mustafa.id)
Student.create(name: "Keila", age: 23, major: "Mathematics", instructor_id: sam.id)