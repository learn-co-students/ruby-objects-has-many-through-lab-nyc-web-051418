class Doctor
  attr_reader :name, :appointments

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
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    Appointment.all.select {|appointment| appointment.doctor == self}.map {|appointment| appointment.patient}
  end
end
