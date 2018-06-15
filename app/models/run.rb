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
