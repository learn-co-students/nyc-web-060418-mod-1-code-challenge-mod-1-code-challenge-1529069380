
class Review

@@all = []

  attr_reader :review_restaurant, :review_customer, :content

  def initialize(restaurant, customer, content)
    @review_restaurant = restaurant
    @review_customer = customer
    @content = content
    self.class.all << self
  end

  def self.all
    @@all
  end

  def customer
    self.review_customer
  end

  def restaurant
    self.review_restaurant
  end

end
