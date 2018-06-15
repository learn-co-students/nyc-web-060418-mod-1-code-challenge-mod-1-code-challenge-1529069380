# Please copy/paste all three classes into this file to submit your solution!

# require_relative 'review.rb'
# require_relative 'restaurant.rb'
# require_relative 'customer.rb'

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

class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def find_by_name
    self.all.find do |name|
      name == full_name
    end
  end

  def reviews
    Review.all
  end

  def customers
    reviews.select do |review|
      review.restaurant == self.name
      review.customer
    end
  end

end

class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all = [] << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name
    self.all.find do |name|
      name == full_name
    end
  end

  def self.find_all_by_first_name
    self.all.select do  |first_name|
      first_name == @first_name
    end
  end

  def self.all_names
    self.all.full_name each do |full_name|
      full_name
    end
  end

  def add_review(restaurant, content)
    Restaurant.new(restaurant, content)
  end

end
