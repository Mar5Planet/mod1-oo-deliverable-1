require 'pry'

class Patient 
    attr_accessor :name, :age 
    attr_reader :impatience

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age.to_i
        @impatience = 0
        @@all << name
    end 

    def inquire_appt_ready
        puts "The doctor will be ready soon."
        increase_impatience
    end 

    def self.all 
        @@all
    end

    private 

    def increase_impatience
        @impatience += 1
    end 

end 

