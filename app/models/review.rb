class Review

  attr_reader :restaurant, :customer, :content

  @@all = []

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    self.class.all << self
  end

  def self.all
    @@all
  end

end
