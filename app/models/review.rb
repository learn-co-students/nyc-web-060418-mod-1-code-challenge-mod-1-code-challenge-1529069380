class Review

  attr_reader :customer, :restaurant
  @@all = []

  def self.all
    @@all
  end

  def initialize (restaurant, customer, review)
    @restaurant = restaurant
    @customer = customer
    @review = review
    self.class.all << self
  end


end
