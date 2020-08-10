require 'pry'


class Doctor 
    attr_accessor :name, :years
    attr_reader :specialty

    @@all = []

    def initialize(name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years.to_i
        @@all << self
    end 

    def self.all 
        @@all
    end 

    def greet 
        puts "Welcome to the hospital! My name is #{self.name.capitalize} and I will be taking care of you."
    end

    def self.find_by_speciality(specialty_input)
        self.all.find do |doctor|
            doctor.specialty == specialty_input
        end 
    end 

    def appointments 
        Appointment.all.select do |appointment|
            appointment.doctor == self 
        end 
    end 

    def patients 
        patients = appointments.map do |appointment|
            appointment.patient
        end
        patients.uniq
    end 


    # def patients 
    #     Patient.all.select do |patient|
    #         patient.doctor == self 
    #     end
    # end 

    # def discharge_patient(patient)
    #     if patient.doctor == self 
    #         patient.doctor = nil 
    #         "#{patient.name} has successfully been discharged"
    #     else "You cannot discharge a patient that is not yours"
    #     end
    # end 

    # def transfer_patient(patient, new_doctor)
    #     if patient.doctor == self 
    #         patient.doctor = new_doctor
    #         "#{patient.name} has officially been transferred to the care of #{new_doctor.name}."
    #     else "You cannot transfer a patient that is not yours"
    #     end
    # end 

end 
