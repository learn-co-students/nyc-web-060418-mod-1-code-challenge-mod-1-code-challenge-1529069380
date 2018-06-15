class Restaurant
  attr_accessor :name

  @@all_restaurants = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  # instance methods

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.collect {|review| review.customer}
  end

  # class methods

  def self.all
    @@all_restaurants
  end

  def self.find_by_name(name)
    all.find {|restaurant| restaurant.name.downcase == name}
  end

end
