class Review
  @@all = []

  attr_accessor :name, :restaurant, :customer

  def initialize(name, restaurant, customer)
    @name = name
    @restaurant = restaurant
    @customer = customer
    self.class.all << self
  end

  def self.all
    @@all
  end
end
