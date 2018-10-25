require 'faker'

# Create cities
4.times { City.create!(name: Faker::Address.city)}

#Create 8 Doctors
8.times do
  city = City.find(rand(City.all.count)+City.first.id)
  doc = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::DrWho.specie, postal_code: Faker::Address.postcode, city_id: city.id)
end

# Create 52 patients
52.times do
  city = City.find(rand(City.all.count)+City.first.id)
  pat = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: city.id)
end

# Create one appointment for each patient, with a random doctor
Patient.all.each do |pat|
  doc = Doctor.where(city: pat.city_id).first
  next unless !doc.nil?
  appt = Appointment.create!(date: Faker::Date.forward, doctor_id: doc.id, patient_id: pat.id, city_id: doc.city_id)
end

