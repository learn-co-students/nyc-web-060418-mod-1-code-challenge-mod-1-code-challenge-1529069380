class Review

  @@all = []

  attr_reader :restaurant, :customer

  def initialize(restaurant, customer)
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

end
