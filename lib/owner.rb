class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all_owners = []


  def initialize(species)
    @species = species
    @@all_owners << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.size
  end

  def self.reset_all
    @@all_owners.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
   @pets[:dogs].each {|dog| dog.mood= "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood= "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood= "happy"}
  end

  def sell_pets
    @pets.each do |type, animals|
      animals.each do |animal|
        animal.mood = "nervous"
        end
      animals.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


end
