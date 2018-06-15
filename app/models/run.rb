require 'pry'
require_relative 'customer.rb'
require_relative 'restaurant.rb'
require_relative 'review.rb'

mike = Customer.new("mike", "cat")
mk = Customer.new("mk", "rubin")
dave = Customer.new("dave", "james")
arnold = Customer.new("arnold", "nelson")

katz = Restaurant.new("katz deli")
cafe_paris = Restaurant.new("cafe paris")
chipotle = Restaurant.new("chipotle")
bk = Restaurant.new("burger king")

review1 = Review.new(katz, mike, "soup sucks")
review2 = Review.new(cafe_paris, mk, "i hate carrots")
review1 = Review.new(chipotle, mike, "coffee?")
review2 = Review.new(bk, dave, "i like turtles")
review1 = Review.new(bk, arnold, "good meal")
review2 = Review.new(katz, mk, "lame")

pry.Start
