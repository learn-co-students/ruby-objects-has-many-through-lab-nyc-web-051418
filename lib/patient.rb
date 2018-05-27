require 'pry'
require_relative 'appointment.rb'

class Patient

  attr_accessor :name

  ALL = []

  def initialize(name)
  @name = name

  ALL << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
end
