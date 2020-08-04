require 'pry'
#Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
#Doctor#name: should return the Doctor’s name, should be able to change its name after creation 
#Doctor#speciality: should return the Doctor’s speciality, should NOT be able to change its speciality after creation
#Doctor#years: should return the Doctor’s years, should be able to change its years after creation

class Doctor
    def initialize name, speciality, years=1
        @name = name
        @speciality = speciality
        @years = years=1
    end
    attr_accessor :name, :years
    attr_reader :speciality
end
