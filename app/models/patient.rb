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
    attr_accessor :name, :age, :impatience
    def initialize name, age, impatience=0
        @name = name
        @age = age
        @impatience = impatience
    end

    def inquire_appt_ready 
        puts "The doctor should be seeing you shortly"
        increase_impatience
    end
    
private
    def increase_impatience
        @impatience += 1
    end

end


sophie = Patient.new "Sophie", 18
albert = Patient.new "Albert", 20
albert.inquire_appt_ready

puts albert.impatience
albert.inquire_appt_ready
puts albert.impatience

rebecca = Patient.new "Rebecca", 7
christof = Patient.new "Christof", 82
