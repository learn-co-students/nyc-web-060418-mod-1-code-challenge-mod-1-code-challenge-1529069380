require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer_1 = Customer.new("Jeff", "Jargon")
customer_2 = Customer.new("Bob", "Backer")
customer_3 = Customer.new("Mad", "Matt")

res_1 = Restaurant.new("Dragon Dome")
res_2 = Restaurant.new("Pizza Place")
res_3 = Restaurant.new("Sausage party")
res_4 = Restaurant.new("Nuudle you")

rev_1 = Review.new("Great food", customer_1.first_name, customer_1.last_name, res_1)
rev_2 = Review.new("SUPER AMAZING", customer_2.first_name, customer_2.last_name, res_2)
rev_3 = Review.new("So so", customer_3.first_name, customer_3.last_name, res_3)
rev_4 = Review.new("Deliciouse", customer_3.first_name, customer_3.last_name, res_3)


Pry.start
