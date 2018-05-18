require 'pry'
# require_relative 'patient'
# require_relative 'appointment'

class Doctor
  attr_accessor :name
  @@all = []

  def initialize(doctor_name)
    @name = doctor_name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient,date)
    # doctor, patient & date are added to the single point of truth.
    Appointment.new(self,patient,date)
    # binding.pry
  end

  def appointments
    # we can use Appointment.all to access all appointments. We can then use the select enumerator to find the ones relevant to the doctor in question, i.e. self. 
    Appointment.all.select do |appointment|
      appointment.doctor == self
      # binding.pry
    end
  end

  def patients
    Appointment.all.map do |appointment|
      appointment.patient
    end
  end

end

# Pry.start