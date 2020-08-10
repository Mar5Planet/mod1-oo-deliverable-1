require 'pry'

class Patient 
    attr_accessor :name, :age
    attr_reader :impatience

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age.to_i
        @impatience = 0
        @@all << self
    end 

    def inquire_appt_ready
        "The doctor will be ready soon."
        increase_impatience
    end 

    def self.all 
        @@all
    end

    def appointments 
        Appointment.all.select do |appointment|
            appointment.patient == self 
        end 
    end 

    def doctors 
        doctors= appointments.map do |appointment|
           appointment.doctor
        end
        doctors.uniq
    end 

    def create_appointment(doctor, time=nil)
         Appointment.new(self, doctor, time)
         if time
            "#{self.name.capitalize} has scheduled an appointment with doctor #{doctor.name.capitalize} at #{time}"
         else 
            "#{self.name.capitalize} has scheduled an appointment with doctor #{doctor.name.capitalize}."
         end 
    end 

    # def change_doctors(new_doctor) 
    #     self.doctor = new_doctor
    # end 


    private 

    def increase_impatience
        @impatience += 1
    end 
end 
