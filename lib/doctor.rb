class Doctor

  require "pry"

  attr_accessor :name #:appointments #, :patients
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    #@appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(appointment, date)
    Appointment.new(appointment, self, date)
    #@appointments << song
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
