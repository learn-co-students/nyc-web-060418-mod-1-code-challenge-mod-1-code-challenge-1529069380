class Review

  @@all = []
  attr_accessor :review, :first_name, :last_name, :restaurant

  def initialize(review,first_name, last_name, restaurant)
    @review = review
    @first_name = first_name
    @last_name  = last_name
    @restaurant = restaurant
    self.class.all << self
  end
  def self.all
    @@all
  end
  def customer
    # * returns the customer object for that given review
    Customer.all.select{|cu| cu.first_name == self.first_name}
  end
  def restaurant
    # * returns the restaurant object for that given review
    Restaurant.all.select{|cu|puts cu}
  end

end
