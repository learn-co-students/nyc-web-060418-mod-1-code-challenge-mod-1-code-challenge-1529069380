require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

arbys = Restaurant.new("arby's")
mcdonalds = Restaurant.new("Mcdonalds")
burger_king = Restaurant.new("Burger King")
taco_bell = Restaurant.new("Taco Bell")

sandy = Customer.new("Sandy", "Edwards")
will = Customer.new("Will", "Edwards")
kate = Customer.new("Kate", "Anthony")
sarah = Customer.new("Sarah", "Gardner")
manny = Customer.new("Manny", "Mejias")
sandy2 = Customer.new("Sandy", "Colfax")

review_1 = Review.new(arbys, sandy, "It was TERRIBLE!!")
review_2 = Review.new(mcdonalds, manny, "I'm lovin' it.")
binding.pry
review_3 = Review.new(taco_bell, will, "Meh.")

#
# Pry.start
