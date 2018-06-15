require 'pry'
require_relative 'Customer'
require_relative 'Review'
require_relative 'Restaurant'

noah = Customer.new("Noah", "Berman")
tashawn = Customer.new("Tashawn", "Williams")
andrew = Customer.new("Andrew", "Cohn")
graham = Customer.new("Graham", "Troyer-Joy")

crackers = Restaurant.new("Graham's Great Crackers")
steaks = Restaurant.new("Tashawn's T-Bone Steaks")
apples = Restaurant.new("Andrew's Awesome Applesauce")
nuts = Restaurant.new("Noah's Nuts")

noah.add_review(apples, "Too many apples, not enough sauce")
graham.add_review(nuts, "Exactly what I expected")
tashawn.add_review(crackers, "Seems more like a cookie to me")
andrew.add_review(steaks, "I asked for extra well-done with ketchup and was asked to leave")
noah.add_review(nuts, "The owner of this place is very handsome")
noah.add_review(apples, "The sauce didn't keep for my 16 hour drive to Winnepeg")
graham.add_review(steaks, "My t-bone looked more like a J. 0/5 stars")
andrew.add_review(steaks, "Not enough options for vegans")
tashawn.add_review(crackers, "It's growing on me")
andrew.add_review(nuts, "Very limited options")

test_review1 = Review.new(noah, apples, "This is just a test! I'd never be caught dead eating apples")
test_review2 = Review.new(andrew, crackers, "Prefer Animal Crackers")
binding.pry
test_review_3 = Review.new(tashawn, steaks, "This review only exists so my binding.pry will work!")
