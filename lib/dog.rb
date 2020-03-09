class Dog
  # code goes here
  attr_accessor :dog, :owner

  @@all =[]

  def intialize(name)
    @dog = name
    @owner = owner
  end

  def self.all
    @@all
  end


end
