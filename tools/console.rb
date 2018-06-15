require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


Pry.start

giles = Customer.new("Giles", "Bonner")
restaurant = Restaurant.new("my restaurant")
Customer.find_by_name("Giles Bonner")

giles.add_review(restaurant, "good food!")
