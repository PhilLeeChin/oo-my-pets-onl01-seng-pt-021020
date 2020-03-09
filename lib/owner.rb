class Owner
  # code goes here
  attr_accessor :name, :type, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end
end
