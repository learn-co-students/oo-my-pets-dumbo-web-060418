class Dog
  # code goes here
 attr_reader :name
  attr_accessor :mood, :owner
  
  
  def initialize(name="Daisy", mood="nervous")
    @name = name
    @mood  = mood
    @owner = owner
  end
  
end
