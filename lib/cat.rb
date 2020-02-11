class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def find_cat_by_name(name)
    @@all.select { |cat| cat.name == name}
  end
end