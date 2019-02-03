class Owner
  attr_reader :name, :species
  attr_accessor :pets
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
    
    self.pets[fishes] << Fish.new(name)
    
    
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