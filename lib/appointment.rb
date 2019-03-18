class Appointment
  @@all = []

  def initialize(patient, date, doctor)

    @@all << self
  end

  def self.all
    @@all
  end

end
