

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
  # returns an array of all restaurants

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name }
  end
  # given a string of restaurant name, returns the first restaurant that matches


  def reviews
    Review.all.select { |review| review.restaurant == self }
  end
  # returns an array of all reviews for that restaurant

  def customers
    reviews.map { |review| review.customer.full_name }.uniq
  end
  # returns all of customers who have written reviews of that restaurant. A Restaurant has many Customers and a Customer has many Restaurants


end
