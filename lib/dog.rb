class Dog
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name

  @@all =[]

  def intialize(pet)
    @name = pet
    @owner = name
    @mood = "nervous"
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
end
