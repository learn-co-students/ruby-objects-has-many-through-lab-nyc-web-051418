require 'pry'

class Appointment

  attr_accessor :date, :patient, :doctor

  ALL = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date

    ALL << self
  end

  def self.all
    ALL
  end
end
