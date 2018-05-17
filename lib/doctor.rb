class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    #binding.pry
    Appointment.new(patient, self, date)
    #binding.pry
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def self.all
    @@all
  end

  def patients
    appointment_list = appointments
    appointment_list.map do |appointment|
      appointment.patient
    end
  end
end
