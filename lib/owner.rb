class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    save
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def save
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
  
  def cats 
    Cat.all.select { |cat| cat.owner == self}
  end
  def dogs 
    Dog.all.select { |dog| dog.owner == self}
  end
  
  def buy_cat(cat)
    if !cat.included?(cats)
      
  end
  
end







