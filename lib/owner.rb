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
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def say_species
    "I am a #{@species}."
  end

  def list_pets
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
  end

  def sell_pets
  end

  def play_with_cats

  end
end
