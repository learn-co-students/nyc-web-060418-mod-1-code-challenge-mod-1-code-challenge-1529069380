require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bob = Customer.new("Bob", "Schwartz")
linda = Customer.new("Linda", "Fields")
dylan = Customer.new("Dylan", "Campbell")

review_1 = Review.new(bob, "Ralph")
review_2 = Review.new(linda, "Essen")
review_3 = Review.new(dylan, "Amelie")

ralph = Restaurant.new("Ralph")
essen = Restaurant.new("Essen")
amelie = Restaurant.new("Amelie")

Pry.start
