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
    
    fish = ""
    cat = ""
    dog = ""
    
    self.pets.each do |k, v| 
      
    
     
      if k == :fishes
       
       fish = v.length
       
      elsif k == :cats
    
        cat = v.length.to_s
        
      
      else
        
        dog = v.length.to_s
      
      end
      
    end
     

    
    r = "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
     
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