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

      appointment.patient == self
    end
  end

  def doctors
    appointments.collect do |appointment|
      binding.pry
      appointment.doctor
    end
  end

  def self.all
    @@all
  end

end
