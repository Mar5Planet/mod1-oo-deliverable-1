require 'pry'

# Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
# Doctor#name: should return the Doctor’s name, should be able to change its name after creation
# Doctor#speciality: should return the Doctor’s speciality, should NOT be able to change its speciality after creation
# Doctor#years: should return the Doctor’s years, should be able to change its years after creation

class Doctor 

    #initalize Doctor class with three inputs
    def initialize(name, specialty, years = 1)
        @name = name
        @specialty = specialty
        @years = years
    end 

    #enable both writing and reading capabilities to the 
    #name and years instance variables
    attr_accessor :name, :years

    #allow only reading/getter attributes to the specality
    #instance variable
    attr_reader :specialty

end 

charlie = Doctor.new('Charlie', 'Heart Surgeon', 10)

binding.pry