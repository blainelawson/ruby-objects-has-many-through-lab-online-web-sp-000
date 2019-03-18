class Patient
  attr_accessor :name
  @@all = []

  def name=(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end
