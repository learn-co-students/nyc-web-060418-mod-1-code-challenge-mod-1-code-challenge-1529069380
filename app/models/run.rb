require 'pry'

require_relative 'customer.rb'
require_relative 'restaurant.rb'
require_relative 'review.rb'

chipotle = Restaurant.new("Chipotle Mexican Grill")
panera = Restaurant.new("Panera Bread")
fridays = Restaurant.new("TGI Fridays")
panera_2 = Restaurant.new("Panera Bread")

brad = Customer.new("Brad", "Newman")
alex = Customer.new("Alex", "Hernandez")
mk = Customer.new("Mary-Kate", "James")
brad_pitt = Customer.new("Brad", "Pitt")

review_1 = Review.new(chipotle, brad, "I love it!")
review_2 = Review.new(chipotle, brad, "I still love it!")
review_3 = Review.new(panera, brad, "I usually like it.")
review_4 = Review.new(fridays, brad, "Not a huge fan.")
review_5 = Review.new(chipotle, alex, "I love it!")
review_6 = Review.new(panera, alex, "Not a huge fan. ")
review_7 = Review.new(panera, mk, "I love it!")
review_8 = Review.new(fridays, mk, "I usually like it.")


Pry.start
