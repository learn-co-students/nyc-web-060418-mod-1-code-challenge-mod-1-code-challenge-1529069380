class Restaurant

# I want to have the ability to change the name of the restaurant (it happens IRL sometimes!)
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

# INSTANCE METHODS

# Returns an array of all reviews for that specific restaurant instance.
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

# returns all of customers who have written reviews of that restaurant. A Restaurant has many Customers and a Customer has many Restaurants
  def customers
    reviews.map do |review|
      review.customer
    end
  end

# CLASS METHODS

  def self.all
    @@all
  end

# Given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(restaurant_name_string)
    Restaurant.all.each do |restaurant_instance|
      if restaurant_instance.name == restaurant_name_string
        return restaurant_instance
      end
    end
  end

end
