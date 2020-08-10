require 'pry'
require_relative "./app/models/patient.rb"
require_relative "./app/models/doctor.rb"
require_relative "./app/models/appointment.rb"

sophie = Patient.new "Sophie", 18
albert = Patient.new "Albert", 20
rebecca = Patient.new "Rebecca", 7
christof = Patient.new "Christof", 82

steven = Doctor.new "Steven", "Heart Surgeon", 10
johanna  = Doctor.new "Johanna", "Brain Surgeon", 12
annie = Doctor.new "Annie", "Heart Surgeon", 23
paulo = Doctor.new "Paulo", "Nutritionist", 8

sophie.appointment_with johanna
albert.appointment_with paulo
christof.appointment_with annie
rebecca.appointment_with steven
albert.appointment_with steven
rebecca.appointment_with annie

binding.pry