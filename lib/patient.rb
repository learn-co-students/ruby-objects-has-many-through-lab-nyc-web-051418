class Patient
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    appointment_list = appointments
    appointment_list.map {|appointment| appointment.doctor}
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
end
