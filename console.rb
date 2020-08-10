require 'pry'
require_relative './app/models/patient'
require_relative './app/models/doctor'
require_relative './app/models/appointment'

doctor1 = Doctor.new('larry', 'brain', 4)
doctor2 = Doctor.new('jonny', 'heart', 10)
doctor3 = Doctor.new('james', 'nerve', 20)

patient1 = Patient.new('anna', 10)
patient2 = Patient.new('jenny', 12)
patient3 = Patient.new('brad', 20)


appointment1 = Appointment.new(patient1, doctor1, 12)
appointment2 = Appointment.new(patient2, doctor1)
appointment3 = Appointment.new(patient1, doctor2)

binding.pry

