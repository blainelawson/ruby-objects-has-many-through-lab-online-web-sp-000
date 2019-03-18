class Appointment
  @@all = []

  def initialize(patient, date)

    @@all << self
  end

  def self.all
    @@all
  end

end
