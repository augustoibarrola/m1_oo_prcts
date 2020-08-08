class Appointment
    @@all_appointments = Array.new
    def initialize patient, doctor #the initialized arguments have to be instances of the two classes one is trying to join. I am not sure which one goes first or if the order matters at all.  
        @patient = patient
        @doctor = doctor
        @@all_appointments << self
    end

    def self.all
        @@all_appointments
    end
end


#TO DO 
#find out if the initialize method argument order matters (should it be – patient, doctor v. doctor, patient)