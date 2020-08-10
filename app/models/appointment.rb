class Appointment
    @@all_appointments = Array.new
    attr_accessor :patient, :doctor
    def initialize patient, doctor 
        @patient = patient
        @doctor = doctor
        @@all_appointments << self
    end

    def self.all
        @@all_appointments
    end
end
