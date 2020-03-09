class Owner
  # code goes here
  attr_accessor :name, :type

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
end
