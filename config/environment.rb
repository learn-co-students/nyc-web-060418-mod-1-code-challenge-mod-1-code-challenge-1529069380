require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'

customer1 = Customer.new("Emily", "Law")
customer2 = Customer.new("Frank", "Ruby")

restaurant1= Restaurant.new("McDonalds")
restaurant2= Restaurant.new("Wendy's")

review1 = Review.new(customer1, restaurant1, "Ew")
review2 = Review.new(customer2, restaurant2, "Yum")

binding.pry
