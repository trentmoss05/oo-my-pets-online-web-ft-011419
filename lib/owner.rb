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

  end

  def buy_fish(name)
    new_fish = Fish.new(name)
  end




end
