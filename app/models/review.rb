class Review

  @@all_reviews = []

  attr_reader :customer, :restaurant, :content

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    self.class.all << self
  end

  def self.all
    @@all_reviews
  end
end
