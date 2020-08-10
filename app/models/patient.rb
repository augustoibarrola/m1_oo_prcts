require 'pry'

class Patient
    @@patients = []
    attr_accessor :name, :age, :appointment, :doctor
    def initialize name, age 
        @name = name
        @age = age
        @impatience = 0
        @doctor = ""
        @appointment = []
        @@patients << self
    end

    def inquire_appt_ready 
    puts "Nurse: The doctor should be seeing you shortly.\n#{self.name}: Sure they will.\n  #{self.name}'s impatience increased by 1.'"
        increase_impatience
    end
    
    def doctors
        Appointment.all.select { |x| x.patient == self }
    end

    def appointment_with doctor 
        @appointment = Appointment.new self, doctor
        self.doctor= doctor
        doctor.patient = self
        doctor.appointment <<  self.appointment
    end
    #<<==QUESTION==>> 
    #is the method above not the same thing as #Patient#create_appointment? 

    def appointments
        Appointment.all.select { |x| x.patient == self }
    end

    def self.all 
        @@patients
    end

private

    def increase_impatience
        @impatience += 1
    end

end

 # def change_doctors new_doctor
    #     self.doctor = new_doctor
    # end






