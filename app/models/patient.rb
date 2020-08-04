require 'pry'
#Patient#initialize: should initialize with a name (string) and age (integer)
#Patient#name: should return the Patient’s name, should be able to change its name after creation
#Patient#age: should return the Patient’s age, should be able to change its age after creation

class Patient
    def initialize name, age
        @name = name
        @age = age
    end
    attr_accessor :name, :age
end
