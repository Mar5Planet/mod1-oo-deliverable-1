require 'pry'

class Appointment 
    attr_accessor :patient, :doctor
    attr_reader :time

    @@all = []

    def initialize(patient, doctor, time= nil)
        @time = time.to_i 
        # added time for practical use
        @patient = patient 
        @doctor = doctor 
        @@all << self
    end 

    def self.all 
        @@all
    end 

end 

