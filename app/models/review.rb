class Review
  @@reviews = []
  attr_accessor :customer, :restaurant, :content
  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    self.class.all << self

  end

  def self.all
    @@reviews
  end

  def customers
    Review.all.select {|review| review.customer == self.customer}
  end

  def restaurant
    Review.all.select {|review| review.restaurant == self.restaurant}
  end



end
