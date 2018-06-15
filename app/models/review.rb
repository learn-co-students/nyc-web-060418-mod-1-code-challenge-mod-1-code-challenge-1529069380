class Review

  attr_accessor :restaurant, :customer, :review
  @@all = []

  def initialize(review, restaurant, customer)
    @review, @restaurant, @customer = review, restaurant, customer
    self.class.all << self
  end

  def self.all
    @@all
  end

end
