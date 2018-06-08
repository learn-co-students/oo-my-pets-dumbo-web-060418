require 'pry'

class Owner
  # code goes here
  @@all = []
  @@owners_count = 0

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}

    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    #new_fish =
    self.pets[:fishes] << Fish.new(fish)
    #new_fish.owner = self
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets

    self.pets.each do |k, v|
      # if !pet.empty?
        v.map do |pet|
          #binding.pry

          pet.mood = "nervous"
        # end
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def self.count
    @@owners_count = @@all.length
  end

  def self.reset_all
    @@all.clear
  end

end
