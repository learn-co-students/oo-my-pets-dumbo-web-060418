require "pry"

class Owner

  attr_reader :species
  attr_accessor :name, :pets

    @@all = []

    def initialize(name)
      @name=name
      @pets={cats: [], fishes: [], dogs: []}
      @species="human"
      @@all << self
    end

    def self.all
      @@all
    end

    def self.count
      @@all.count
    end

    def self.reset_all
      @@all.clear
    end

    def say_species
      "I am a #{self.species}."
    end

    def pets
      @pets
    end

    def buy_cat(name)
      new_cat = Cat.new(name)
      @pets[:cats] << new_cat
    end

    def buy_dog(name)
      new_dog = Dog.new(name)
      @pets[:dogs] << new_dog
    end

    def buy_fish(name)
      new_fish = Fish.new(name)
      @pets[:fishes] << new_fish
    end

    def walk_dogs
      @pets[:dogs].each do |x|
        x.mood = "happy"
      end
    end

    def play_with_cats
      @pets[:cats].each do |x|
        x.mood = "happy"
      end
    end

    def feed_fish
      @pets[:fishes].each do |x|
        x.mood = "happy"
      end
    end

    def sell_pets
      @pets.each do |animal, array|
        array.each do |x|
          x.mood = "nervous"
        end
        array.clear
      end
    end

    def list_pets
      "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
    end
  end
