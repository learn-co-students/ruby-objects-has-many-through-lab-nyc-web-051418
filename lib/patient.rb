class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |apt|
      apt.patient.name == self.name
    end
  end

  def doctors
    appointments.map do |apt|
      apt.doctor
    end
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
end
