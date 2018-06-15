# Please copy/paste all three classes into this file to submit your solution!
class Restaurant
  attr_accessor :name

  @@all_restaurants = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  # instance methods

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.collect {|review| review.customer}
  end

  # class methods

  def self.all
    @@all_restaurants
  end

  def self.find_by_name(name)
    all.find {|restaurant| restaurant.name.downcase == name.downcase}
  end

end

class Review

  @@all_reviews = []

  attr_reader :customer, :restaurant, :content

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    self.class.all << self
  end

  def self.all
    @@all_reviews
  end
end

class Customer
  attr_accessor :first_name, :last_name

  @@all_customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

# instance methods

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  # i figured i'd add this #reviews method because a customer
  # should know about their reviews

  def reviews
    Review.all.select {|review| review.customer == self}
  end

# class methods
# sanitized arguments against capitalization errors
  def self.all
    @@all_customers
  end

  def self.find_by_name(name)
    all.find {|customer| customer.full_name == name.downcase}
  end

  def self.find_all_by_first_name(name)
    all.select {|customer| customer.first_name == name.downcase}
  end

  def self.all_names
    all.collect {|customer| customer.full_name}
  end

  # how can i sanitize against punctuation and spacing errors
  # this should work but i wasn't able to incorporate and debug it in time
  # def sanitize
  #   self.gsub!(/[\s|'|-]/)
  # end
end
