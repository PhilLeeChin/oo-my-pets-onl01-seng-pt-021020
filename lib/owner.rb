class Owner
  # code goes here
  attr_accessor :name, :type, :species

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
end
