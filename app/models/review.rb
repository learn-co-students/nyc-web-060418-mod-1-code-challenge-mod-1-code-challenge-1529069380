class Review

  attr_reader :customer, :restaurant
  attr_accessor :review
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

  def text
    self.review
  end


end
