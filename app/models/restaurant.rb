class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(restaurant_name)
    self.all.find do |restaurant|
      restaurant.name = restaurant_name
    end
  end

  #returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  #returns all of customers who have written reviews of that restaurant. A Restaurant has many Customers and a Customer has many Restaurants
  def customers
    reviews.map do |review|
      review.customer
    end
  end

  #returns an array of all restaurants
  def self.all
    @@all
  end

end
