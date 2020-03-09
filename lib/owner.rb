class Owner
  # code goes here
  attr_accessor :name, :type
  attr_reader :species
  @@all = []

  def initialize(species)
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
