class Review

  @@all = []
  attr_accessor :review, :customer, :restaurant

  def initialize(review, customer, restaurant)
    @review = review
    @customer = customer
    @restaurant = restaurant
    self.class.all << self
  end
  def self.all
    @@all
  end


end
