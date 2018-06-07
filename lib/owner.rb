class Owner

  @@all = []

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def walk_dogs
    @pets[:dogs].map { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].map { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].map { |fish| fish.mood = "happy" }
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def say_species
    "I am a #{self.species}."
  end

  def sell_pets
    @pets.map do |species, pet_arr|
      pet_arr.map { |pet| pet.mood = "nervous" }
      @pets[species] = []
    end
  end


end
