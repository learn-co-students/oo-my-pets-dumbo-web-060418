require 'pry'

class Owner
  attr_accessor :name, :pet
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pet = {fishes: [], cats: [], dogs: []}
    @species = 'human'
    @@all << self
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end

  def pets
    @pet
  end

  def say_species
    "I am a #{@species}."
  end

  def self.count
    @@all.count
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    binding.pry
    # @pet = {fishes: [], cats: [], dogs: []}
    .each {|o| o.mood = "happy" }
  end

  def list_pets
      "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
