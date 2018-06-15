class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Review.all.find do |review_instance|
      review_instance.restaurant == self
    end
  end

  def reviews
    Review.all.select do |review_instance|
      review_instance.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review_instance|
      review_instance.customer
    end
  end            

end

# * Restaurant.all - DONE
#   * returns an array of all restaurants

# * Restaurant.find_by_name(name)
#   * given a string of restaurant name, returns the first restaurant that matches

# * Restaurant#reviews
#   * returns an array of all reviews for that restaurant

# * Restaurant#customers
#   * returns all of customers who have written reviews of that restaurant. A `Restaurant` has many `Customers` and a `Customer` has many `Restaurants`
