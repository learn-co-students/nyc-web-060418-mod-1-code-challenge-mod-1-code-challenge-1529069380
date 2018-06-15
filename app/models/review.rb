class Review

  @@all = []

  attr_accessor :customer, :restaurant, :content

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  #returns the customer object for that given review
  # def customer
  # @customer - see attr_accessor
  # end

  # #returns the restaurant object for that given review
  # def restaurant
  # @restaurant - see attr_accessor
  # end

  #returns all of the reviews
  def self.all
    @@all
  end

end
