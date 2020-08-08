require 'pry'
#Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
#Doctor#name: should return the Doctor’s name, should be able to change its name after creation 
#Doctor#speciality: should return the Doctor’s speciality, should NOT be able to change its speciality after creation
#Doctor#years: should return the Doctor’s years, should be able to change its years after creation
# ============
#Doctor.all: should return a list of all doctor instances
#Doctor#greet: should print a greeting that would make any patient feel welcomed!
#Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty 

class Doctor
    attr_accessor :name, :years, :patients
    attr_reader :speciality
    @@doctor = Array.new

    def initialize name, speciality, years=1, patients=nil
        @name = name
        @speciality = speciality
        @years = years
        @patients = patients
        @@doctor << self

    end

    def greet patient_name
        "Welcome to our hospital, #{patient_name}. You're in great hands."
    end
   
    def self.all
        @@doctor
    end

    def self.find_by_specialty specialty
        Doctor.all.filter do |dr_specialty|
            dr_specialty.speciality == specialty
        end
    end

    def patients 
        @patients
    end

    def discharge_patient
            if patient.doctor == self
                patient.doctor = nil
            end
    end

    def transfer_patient patients, new_doctor
    if patients.doctor == self
        patients.doctor = new_doctor
    end
    end

end



