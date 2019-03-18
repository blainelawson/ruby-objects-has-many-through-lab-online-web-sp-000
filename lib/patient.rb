require "pry"

class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      
      apointment.patient == self
    end
  end

  def self.all
    @@all
  end
end
