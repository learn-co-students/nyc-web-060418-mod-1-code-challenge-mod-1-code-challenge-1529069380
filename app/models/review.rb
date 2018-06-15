class Review

  @@all = []

  attr_accessor :content
  attr_reader :customer, :restaurant

  #Instance Methods

  def initialize(customer, restaurant, content)
    @content = content
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  #Class Methods

  def self.all
    @@all
  end

end
