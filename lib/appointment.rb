class Appointment
  attr_accessor :patient, :doctor, :date

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
