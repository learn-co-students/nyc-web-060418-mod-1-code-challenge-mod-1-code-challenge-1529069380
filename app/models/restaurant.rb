class Restaurant
  
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|r| r.name == name}
  end

  def reviews
    Review.all.select {|rv| rv.restaurant == self}
  end

  def customers
    reviews.map {|rv| rv.customer}.uniq # I don't think customers should be able to leave multiple reviews for the same restaurant but just in case
  end

end
