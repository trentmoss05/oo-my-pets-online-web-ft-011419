class Owner
  attr_accessor :pets, :name
  attr_reader :species
  OWNERS = []

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.count
    OWNERS.size
  end

  def self.all
    OWNERS
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cat] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dog] << Dog.new(name)
  end


end
