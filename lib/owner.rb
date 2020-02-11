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
    cats << Cat.new(cat,self)
  end
  
  def buy_dog(dog)
    dogs << Dog.new(dog,self)
  end
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end
  
  def list_pets
    puts "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
end







