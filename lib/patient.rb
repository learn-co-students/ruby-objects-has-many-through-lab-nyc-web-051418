require 'pry'
require_relative 'doctor'
require_relative 'appointment'

class Patient
  attr_accessor :name, :date
  @@all = []

  def initialize(patient_name)
    @name = patient_name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor,date)
    Appointment.new(doctor,self,date)
    # binding.pry
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
      # binding.pry
    end
  end

  def doctors
    Appointment.all.map do |appointment|
      if appointment.patient == self
        appointment.doctor
      end
    end
  end
end