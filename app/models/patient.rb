require 'pry'

class Patient 
    attr_accessor :name, :age, :doctor
    attr_reader :impatience

    @@all = []

    def initialize(name, age, doctor)
        @name = name
        @age = age.to_i
        @impatience = 0
        @doctor = doctor
        @@all << self
    end 

    def inquire_appt_ready
        "The doctor will be ready soon."
        increase_impatience
    end 

    def self.all 
        @@all
    end


    def change_doctors(new_doctor) 
        self.doctor = new_doctor
    end 


    private 

    def increase_impatience
        @impatience += 1
    end 
end 

