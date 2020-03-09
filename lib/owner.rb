class Owner
  # code goes here
  attr_accessor :owner, :type
  attr_reader :species, :name

  @@all = []

  def initialize(name)
    @name = name
    @owner = owner
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
    self.all.clear
  end
end
