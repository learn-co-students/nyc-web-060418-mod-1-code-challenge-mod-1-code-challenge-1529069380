class Review

  attr_reader :customer, :restaurant
  attr_accessor :content

  @@all = []

  def initialize(customer, restaurant, content=nil)
    @customer = customer
    @restaurant = restaurant
    @content = content
    self.class.all << self
  end

  def self.all
    @@all
  end

end
