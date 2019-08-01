# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all



specialities = ["dentiste", "chirurgien", "generaliste","gastromancien"]
cities = ["Lyon","Villeurbane","Grenoble","St-Etienne"]

cities = [cl = City.create(name: "Lyon"),
cg = City.create(name: "Grenoble"),
cb = City.create(name: "Bourgouin"),
ct = City.create(name: "la-Tour-du-Pin")]

20.times do
  doctors = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: specialities[rand(0..3)], city: cities[rand(0..3)])
end

100.times do
	patients = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

#55.times do
#	appointments = Appointment.create(doctor: @doctors.sample, patient: @patients.sample)
#end
