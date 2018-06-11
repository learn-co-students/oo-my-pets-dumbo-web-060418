class Cat
  # code goes here
  #name, cant be changed
  #mood  = nervous
  #ca change mood
  
  attr_reader :name
  attr_accessor :mood, :owner
  
  
  def initialize(name="crookshanks", mood="nervous")
    @name = name
    @mood  = mood
    @owner = owner
    end
  
end