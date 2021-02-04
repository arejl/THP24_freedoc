require 'faker'

Patient.destroy_all
Doctor.destroy_all
City.destroy_all
Specialty.destroy_all

25.times do
  City.create!(
    city_name: Faker::Address.city
  )
end

["Généraliste", "Dentiste", "Proctologue", "Kinésithérapeute", "Pédiatre"].each do |specialty|
  Specialty.create!(
    specialty_name: specialty
  )
end

100.times do
  Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: City.all.sample.id
  )
end

25.times do
  new_doctor = Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: Faker::Address.zip_code,
    city_id: City.all.sample.id
  )
  new_doctor.specialties = Specialty.all.sample(rand(Specialty.all.length-1))
end

100.times do
  chosen_doctor = Doctor.all.sample
  Appointment.create!(
    doctor: chosen_doctor,
    patient: Patient.all.sample,
    city_id: chosen_doctor.city_id,
    date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 100)
  )
end