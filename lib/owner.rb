class Owner
  attr_reader :species
  attr_accessor :pets, :name
  @@all = []
  @@count = 0
  
  def initialize(name)
    
    @name = name
    @species = "human"
    @pets = {fishes:[], cats:[], dogs:[] }
    @@all << self
    @@count +=1
    
  end
  
  def buy_fish(name)
    
    self.pets[:fishes] << Fish.new(name)
    
    
  end
  
   def buy_dog(name)
    
    self.pets[:dogs] << Dog.new(name)
    
    
  end
  
  def buy_cat(name)
    
    self.pets[:cats] << Cat.new(name)
    
    
  end
  
  def walk_dogs
    
    self.pets[:dogs].each do | dog, mood|
      
      mood = "happy"
      binding.pry
      
    end
  
  end
  def self.all
  
    @@all
  
  end
  
  def self.count
    
    @@count
    
  end
  
  def self.reset_all
    
    @@count = 0
    
  end
  
 
end