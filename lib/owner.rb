class Owner
  # code goes here
  attr_accessor :name, :type
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @species = species
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def say_species
    return "I am a #{species}."
  end
end
