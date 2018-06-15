# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  #Instance Methods

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  #Class Methods

  def self.all
    @@all
  end

  def self.find_by_name(string)
    all.detect {|customer| customer.full_name == string}
  end

  def self.find_all_by_first_name(string)
    all.select {|customer| customer.first_name == string}
  end

  def self.all_names
    all.collect {|customer| customer.full_name}
  end

end

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

class Restaurant
  @@all = []

  attr_accessor :name

  #Instance Methods

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.collect {|review| review.customer}
  end

  #Class Methods

  def self.all
    @@all
  end

  def self.find_by_name(string)
    all.detect {|restaurant| restaurant.name == string}
  end


end
