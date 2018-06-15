
require 'pry'
require_relative 'restaurant'
require_relative 'customer'
require_relative 'review'

alex1 = Customer.new("Alex", "Hernandez")
brad = Customer.new("Brad", "Newman")
alex2 = Customer.new("Alex", "Sinadinos")
jay = Customer.new("Jailene", "Hernandez")

ihop = Restaurant.new("iHop")
tgif = Restaurant.new("TGI Fridays")
shack = Restaurant.new("Shake Shack")

review1 = Review.new("I like it", ihop, alex1)
review2 = Review.new("Good pancakes", ihop, brad)
review3 = Review.new("Meh, it was ok", tgif, alex1)
review4 = Review.new("It was cool", shack, alex2)
review5 = Review.new("More Fridays", tgif, brad)
review6 = Review.new("It was good", shack, jay)
review7 = Review.new("Let's go again", tgif, jay)


Pry.start
