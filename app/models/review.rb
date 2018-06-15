class Review

  attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(restaurant:, customer:, content:)
    @customer = customer
    @restaurant = restaurant
    @content = content
    self.class.all << self
  end

  def self.all
    @@all
  end

end
