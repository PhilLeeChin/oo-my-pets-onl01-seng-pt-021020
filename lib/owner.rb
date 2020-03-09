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

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end
end
