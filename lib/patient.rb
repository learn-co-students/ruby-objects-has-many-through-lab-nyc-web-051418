class Patient
  attr_reader :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    Appointment.all.select {|appointment| appointment.patient == self}.map {|appointment| appointment.doctor}
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

end
