require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'

def reload
  load 'config/environment.rb'
end




  #Make Customers
  ching = Customer.new("Ching", "Lim")
  chang = Customer.new("Changmin", "Lim")
  chong = Customer.new("Chong", "Bang")
  mike2 = Customer.new("Mike", "Bang")
  mike = Customer.new('Mike', 'Lee')
  devin = Customer.new('Devin', 'Kim')
  shing = Customer.new('Shing', 'Park')

  #Make Restaurants
  chipotle = Restaurant.new('chipotle')
  burgerking = Restaurant.new('burgerking')
  magnolia = Restaurant.new('magnolia')
  lobster = Restaurant.new('lobster')

  #Make Reviews
  ching_review = Review.new(ching, chipotle)
  chang_review = Review.new(chang, burgerking)
  chang_review2 = Review.new(chang, magnolia)
  mike_review = Review.new(mike, burgerking)
  devin_review = Review.new(devin, lobster)

# Pry.start
