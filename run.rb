require_relative './app/models/patient'
require_relative './app/models/doctor'


def run
    puts "Welcome to the hospital registration page"
    puts "Are you a doctor or a patient?"
    individual= gets.chomp
    if individual == "doctor"
        puts "Hello doctor, what is your name?"
        name= gets.chomp
        puts "What is your specialty?"
        specialty= gets.chomp
        puts "What are your years of experience?"
        years= gets.chomp
        doctor = Doctor.new(name, specialty, years)
    elsif individual == "patient"
        puts "Hello patient, what is your name?"
        name= gets.chomp
        puts "How old are you?"
        age= gets.chomp
        puts "Who is your doctor?"
        doctor = gets.chomp
        patient= Patient.new(name, age, doctor)
    else
        puts "Sorry, please try again"
    end 

    return 
end

run
