require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets
  
  @@all = [] 
  
 
  
  def initialize(species = "human", name= "Katie")
    @species = species
    @name = name
    @pets = {fishes:[],
    dogs: [],
    cats:[]}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all = []
  end
  
  def self.count
    @@all.count
  end
  
  def say_species
    "I am a #{@species}."
  end
# binding.pry
   
  def buy_fish(fish)
    new_fish = Fish.new(fish)
    new_fish.owner = self
    self.pets[:fishes] << new_fish
  end
  
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy" 
      # binding.pry
    end
  end
  
  def buy_cat(cat)
    new_cat = Cat.new(cat)
    new_cat.owner = self
    self.pets[:cats] << new_cat
  end
  
  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy" 
      # binding.pry
    end
  end
  
  def buy_dog(dog)
    new_dog = Dog.new(dog)
    new_dog.owner = self
    self.pets[:dogs] << new_dog
  end
  
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy" 
      # binding.pry
    end
  end
  
  def sell_pets
    pets.each do |pet_type, pet_arrays|
      
      pet_arrays.each do |pet|
        pet.mood = "nervous"
      end
      pet_arrays.clear
      # binding.pry
    end
  end

  def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  
end