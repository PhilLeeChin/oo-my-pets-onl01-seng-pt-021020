class Owner
  # code goes here
  attr_accessor :name, :type, :owner
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @owner = owner
    @species = "human"
    save
  end

  def name
    @name != @owner
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

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
end
