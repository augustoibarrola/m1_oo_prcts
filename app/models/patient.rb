require 'pry'

#Patient#initialize: should initialize with a name (string) and age (integer)
#Patient#name: should return the Patient’s name, should be able to change its name after creation
#Patient#age: should return the Patient’s age, should be able to change its age after creation
# ============
#Patients should be initialized with an instance variable, impatience, set to 0
#Patient#increase_impatience: should be a private method that increases impatience by 1 
#Patient#inquire_appt_ready: should print that the doctor will be ready soon and increase patient impatience by 1
#Patient.all: should return a list of all patient instances

#Patient#doctor should return the Doctor instance for this patient
#Patient#change_doctors should take a doctor instance and update the patient’s doctor

class Patient
    @@patients = []
    attr_accessor :name, :age, :doctor 
    def initialize name, age, doctor=nil 
        @name = name
        @age = age
        @impatience = 0
        @doctor = doctor
        @@patients << self
    end

    def inquire_appt_ready 
        puts "The doctor should be seeing you shortly"
        increase_impatience
    end

    def self.all 
        @@patients
    end

    def change_doctors new_doctor
        self.doctor = new_doctor
    end

private
    def increase_impatience
        @impatience += 1
    end

end






