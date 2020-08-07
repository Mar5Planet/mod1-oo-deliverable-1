require 'pry'
require_relative './app/models/patient'
require_relative './app/models/doctor'

doctor1 = Doctor.new('larry', 'brain', 4)
doctor2 = Doctor.new('jonny', 'heart', 10)
doctor3 = Doctor.new('james', 'nerve', 20)

patient1 = Patient.new('anna', 10, doctor1)
patient2 = Patient.new('jenny', 12, doctor1)
patient3 = Patient.new('brad', 20, doctor2)

binding.pry