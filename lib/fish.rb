class Fish
  # code goes here
  attr_reader :name
  attr_accessor :mood, :owner
  
  
  def initialize(name= "nemo", mood="nervous")
    @name = name
    @mood  = mood
    @owner = owner
  end
  
end