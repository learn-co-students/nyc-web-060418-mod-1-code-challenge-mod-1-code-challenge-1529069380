class Restaurant
  @@all = []

  attr_accessor :name

  #Instance Methods

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.collect {|review| review.customer}
  end

  #Class Methods

  def self.all
    @@all
  end

  def self.find_by_name(string)
    all.detect {|restaurant| restaurant.name == string}
  end


end
