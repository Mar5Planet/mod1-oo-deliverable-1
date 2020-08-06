require 'pry'


class Doctor 
    attr_accessor :name, :years
    attr_reader :specialty

    @@all = []

    def initialize(name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end 

    def self.all 
        @@all
    end 

    def greet 
        puts "Welcome to the hospital! My name #{@name} and I will be taking care of you."
    end

    def self.find_by_speciality(specialty_input)
        self.all.find do |doctor|
            doctor.specialty == specialty_input
        end 
    end 
end 
