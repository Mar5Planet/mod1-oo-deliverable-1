require 'pry'

# Patient#initialize: should initialize with a name (string) and age (integer)
# Patient#name: should return the Patient’s name, should be able to change its name after creation
# Patient#age: should return the Patient’s age, should be able to change its age after creation

class Patient 

    #initializing class with a name and an age
    def initialize(name, age)
        @name = name.to_s
        @age = age.to_i
    end 

    #use the accessor Macro to allow both writing and 
    #reading capability of both instance variables.
    attr_accessor :name, :age
end 

mar = Patient.new('Mar', 22)
binding.pry