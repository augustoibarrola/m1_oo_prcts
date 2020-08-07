require 'pry'
#Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
#Doctor#name: should return the Doctor’s name, should be able to change its name after creation 
#Doctor#speciality: should return the Doctor’s speciality, should NOT be able to change its speciality after creation
#Doctor#years: should return the Doctor’s years, should be able to change its years after creation
# ============
#Doctor.all: should return a list of all doctor instances
#Doctor#greet: should print a greeting that would make any patient feel welcomed!
#Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty 
#Doctor.find_by_speciality: should take a specialty string as an argument and return a list of the doctors who have that specialty 

class Doctor
    attr_accessor :name, :years
    attr_reader :speciality
    @@doctor = Array.new

    def initialize name, speciality, years=1
        @name = name
        @speciality = speciality
        @years = years
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

    def patients #an array o all patients
    end

end
#binding.pry

steven = Doctor.new "Steven", "Heart Surgeon", 10
johanna  = Doctor.new "Johanna", "Brain Surgeon", 12
annie = Doctor.new "Annie", "Heart Surgeon", 23
paulo = Doctor.new "Paulo", "Nutritionist", 8

# Associations:
# A Patient should belong to a Doctor
# A Doctor can have many Patients
# Patient

# Doctor
# Doctor#patients should return an array of all the Patients for that doctor
# Doctor#dischange_patient should set a patient’s doctor to nil, only if the patient belongs to the current doctor
# Doctor#transfer_patient should change a patient’s doctor to another doctor. This should only work if the patient belongs to the current doctor.