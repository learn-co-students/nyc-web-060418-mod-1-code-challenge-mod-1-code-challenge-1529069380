require_relative '../config/environment.rb'
require_relative '../app/models/customer'
require_relative '../app/models/restaurant'
require_relative '../app/models/review'
require 'pry'

def reload
  load 'config/environment.rb'
end

andy = Customer.new("Andy", "Smith")
andee = Customer.new("Andy", "Dee")
bob = Customer.new("Bob", "Dole")
danny = Customer.new("Danny", "Granger")
erica = Customer.new("Erica", "Cam")
felix = Customer.new("Felix", "Bird")

katz_deli = Restaurant.new("Katz")
mcdonalds = Restaurant.new("Mcdonalds")
burger_king = Restaurant.new("Burger King")
wendys = Restaurant.new("Wendy's")
essen = Restaurant.new("Essen")

andy.add_review(katz_deli, "Amazing")
andy.add_review(mcdonalds, "Terrible")
andy.add_review(burger_king, "Ok")
erica.add_review(mcdonalds, "Sucks")
felix.add_review(katz_deli, "Not bad")

andy.full_name
binding.pry
Pry.start
