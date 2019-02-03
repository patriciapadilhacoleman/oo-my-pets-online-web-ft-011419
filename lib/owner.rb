require 'pry'

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
    
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  
  end
  
  def play_with_cats
    
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  
  end
  
  def feed_fish
    
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  
  end
  
  def say_species
    
    "I am a #{species}."
    
  end
  
  def sell_pets
    
    self.pets.each do |k, v| 
      
      v.each {|a| a.mood = "nervous"}
     
    end
    self.pets.clear
   
    
  end
  
  def list_pets
    
    r = "I have "
    self.pets.each do |k, v| 
      
      
      r << (v.length).to_s  
     
     if k == :fishes
       
       r << " fish"
       
    else
      
      if k == :cats
    
        r << " cat"
      
      else r << " dog"
      
      end
    
      if v.length != 1
        
        r << "s"
        
      end
    end
     
     binding.pry
     
    
    
    r << "."
    
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