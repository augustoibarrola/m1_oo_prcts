require 'pry'

class Doctor
    attr_accessor :name, :years, :patient, :appointment
    attr_reader :speciality
    @@doctor = Array.new

    def initialize name, speciality, years=1
        @name = name
        @speciality = speciality
        @years = years
        @patient
        @appointment = []
        @@doctor << self

    end

    def greets patient_name
        "#{self.name}: Welcome to our hospital, #{patient_name.name}. We hope you enjoy your stay in our care."
    end

    def patients
        Appointment.all.select {|x| x.doctor == self}
    end

    def appointments
        Appointment.all.select {|x| x.doctor == self}
    end

    def self.all
        @@doctor
    end
    
    def self.find_by_specialty specialty
        Doctor.all.filter { |dr_specialty| dr_specialty.speciality == specialty }
    end


end

    # def discharge_patient
    #         if patient.doctor == self
    #             patient.doctor = nil
    #         end
    # end

    # def transfer_patient patients, new_doctor
    # if patients.doctor == self
    #     patients.doctor = new_doctor
    # end
    # end




