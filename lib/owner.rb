class Owner
  # code goes here
  attr_accessor :name, :type
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.delete
  end
end
