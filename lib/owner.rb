class Owner
  attr_accessor
  attr_reader :species

  @@all_owners = []

  def initialize(species)
    @species = species
    @@all_owners << self
  end

  def self.all
    @@all_owners
  end

  def self.reset_all
    @@all_owners.clear
  end

  def self.count
    @@all_owners.size
  end

end
