class Patient
  attr_accessor :name, :doctor

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|x| x.patient == self}
  end

  def doctors
    appointments.map{|x| x.doctor}
  end
end
