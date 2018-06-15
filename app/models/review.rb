class Review

  attr_accessor :restaurant, :customer

  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

end

# * Review.all - DONE
#   * returns all of the reviews
#
# * Review#customer - DONE
#   * returns the customer object for that given review
#
# * Review#restaurant - DONE 
#   * returns the restaurant object for that given review
