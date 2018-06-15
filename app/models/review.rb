class Review

  attr_reader :customer, :restaurant
  attr_accessor :content
  @@all = []

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

# CLASS METHOD

  def self.all
    @@all
  end

end
