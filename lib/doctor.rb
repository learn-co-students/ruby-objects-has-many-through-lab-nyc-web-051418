require 'pry'
require_relative 'appointment.rb'

class Doctor

  attr_accessor :name
  ALL = []

  def initialize(name)
  @name = name

  ALL << self
  end

  def self.all
    ALL
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end
