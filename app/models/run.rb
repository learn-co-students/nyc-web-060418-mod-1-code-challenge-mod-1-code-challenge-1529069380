require 'pry'

require_relative './restaurant.rb'
require_relative './review.rb'
require_relative './customer.rb'

r1 = Restaurant.new("r1")
r2 = Restaurant.new("r2")
r3 = Restaurant.new("r3")
r4 = Restaurant.new("r4")
r5 = Restaurant.new("r5")
r6 = Restaurant.new("r6")

c1 = Customer.new("a", "b")
c2 = Customer.new("a", "d")
c3 = Customer.new("e", "f")
c4 = Customer.new("g", "h")
c5 = Customer.new("i", "j")

rr1 = Review.new(c1, r1)
rr2 = Review.new(c1, r2)
rr3 = Review.new(c1, r3)
rr4 = Review.new(c2, r1)
rr5 = Review.new(c2, r6)
rr6 = Review.new(c3, r4)
rr7 = Review.new(c4, r6)

pry.bundler
