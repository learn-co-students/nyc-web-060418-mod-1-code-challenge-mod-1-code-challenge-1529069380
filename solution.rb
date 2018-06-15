# Please copy/paste all three classes into this file to submit your solution!

# I had four files en total: 1.customer.rb, 2.review.rb, 3.restaurant.rb, and 4.run.rb.

# customer ////////////////////////////////////////////////////////////////////
class Customer

  # I also want to be able to change the customer's name, as it does happen IRL.
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

# INSTANCE METHODS

  def full_name
    "#{first_name} #{last_name}"
  end

  # Given a restaurant object and some review content (as a string), creates a new review and associates it with that customer and restaurant. A Review belongs to a Customer and belongs to a Restaurant
  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

# CLASS METHODS

  def self.all
    @@all
  end

# Given a string of a full name, returns the first customer whose full name matches
# I used each for this b/c select would return more than one match (if there was more than one name match in our Customer @@all array.) and we are supposed to return only the first customer w/ the matching name.
  def self.find_by_name(full_name_string)
    Customer.all.each do |customer|
      if customer.full_name == full_name_string
        return customer
      end
    end
  end

# Given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(first_name_string)
    Customer.all.select do |customer|
      customer.first_name == first_name_string
    end
  end

# Returns an array of all of the customer full names
  def self.all_names
    Customer.all.map do |customer_instance|
    customer_instance.full_name
    end
  end

end

# review.rb ///////////////////////////////////////////////////////////////////

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

# restaurant.rb ///////////////////////////////////////////////////////////////

class Restaurant

# I want to have the ability to change the name of the restaurant (it happens IRL sometimes!)
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

# INSTANCE METHODS

# Returns an array of all reviews for that specific restaurant instance.
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

# returns all of customers who have written reviews of that restaurant. A Restaurant has many Customers and a Customer has many Restaurants
  def customers
    reviews.map do |review|
      review.customer
    end
  end

# CLASS METHODS

  def self.all
    @@all
  end

# Given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(restaurant_name_string)
    Restaurant.all.each do |restaurant_instance|
      if restaurant_instance.name == restaurant_name_string
        return restaurant_instance
      end
    end
  end

end

# run.rb //////////////////////////////////////////////////////////////////////

require 'pry'
require_relative './customer.rb'
require_relative './review.rb'
require_relative './restaurant.rb'

laura = Customer.new("Laura", "Nadolski")
rosalie = Customer.new("Rosalie", "Curtin")
liz = Customer.new("Liz", "Dolgicer")
clonedliz = Customer.new("Liz", "Dolgicer")
other_liz = Customer.new("Liz", "Some other last name")
kristen = Customer.new("Kristen", "Nadolski")

depanneur = Restaurant.new("Depanneur")
joes = Restaurant.new("Joe's Pizza")
prairie = Restaurant.new("Prairie Canary")
dimes = Restaurant.new("Dimes")

review1 = Review.new(laura, depanneur, "pretty delicious")
review2 = Review.new(rosalie, depanneur, "disgusting")
review3 = Review.new(laura, dimes, "gud for my insta aesthetic")
review4 = Review.new(kristen, prairie, "good")
review5 = Review.new(liz, joes, "all i eat")

binding.pry
