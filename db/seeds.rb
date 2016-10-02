# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Administrador", email: "admin@example.com", password: "rootadmin").admin!

User.create(name: "Professor", email: "professor@example.com", password: "rootadmin").professor!

User.create(name: "Professor2", email: "professor2@example.com", password: "rootadmin").professor!

Student.create(name: "Estudante da Silva", dob:"01011992")
Student.create(name: "Estudante da Silva 2", dob:"02021992")

