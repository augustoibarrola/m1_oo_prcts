require 'pry'

#Patient#initialize: should initialize with a name (string) and age (integer)
#Patient#name: should return the Patient’s name, should be able to change its name after creation
#Patient#age: should return the Patient’s age, should be able to change its age after creation
# ============
#Patients should be initialized with an instance variable, impatience, set to 0
#Patient#increase_impatience: should be a private method that increases impatience by 1 
#Patient#inquire_appt_ready: should print that the doctor will be ready soon and increase patient impatience by 1
#Patient.all: should return a list of all patient instances
class Patient
<<<<<<< HEAD
    attr_accessor :name, :age 
    @@patients = Array.new

    def initialize name, age, impatience=0, doctor=nil
=======
    attr_accessor :name, :age, :impatience
    def initialize name, age, impatience=0
>>>>>>> 1c95df5b6ae7d08adc5d3137f3b44fff365808ea
        @name = name
        @age = age
        @impatience = impatience
        @doctor = doctor
        @@patients << self
    end

    def inquire_appt_ready 
        puts "The doctor should be seeing you shortly"
        self.increase_impatience
    end

    def self.all 
        @@patients
    end

    def doctor
        @doctor
    end

    def doctor= new_doctor
        @doctor = new_doctor
    end

    def change_doctors
        binding.pry
        self.doctor = Doctor.all.shuffle 
    end
    
private
    def increase_impatience
        @impatience += 1
    end

end

#Patient#doctor should return the Doctor instance for this patient
#Patient#change_doctors should take a doctor instance and update the patient’s doctor

sophie = Patient.new "Sophie", 18
albert = Patient.new "Albert", 20

rebecca = Patient.new "Rebecca", 7
christof = Patient.new "Christof", 82
#binding.pry
