class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |apt|
      apt.doctor.name == self.name
    end
  end

  def patients
    doc_appointments = self.appointments
    doc_appointments.map do |appointment|
      appointment.patient
    end
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
end
