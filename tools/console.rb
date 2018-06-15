require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("jee", "lee")
customer2 = Customer.new("joanne", "lee")
customer3 = Customer.new("jeeyoon", "lee")
customer4 = Customer.new("joyce", "chung")
customer5 = Customer.new("jinhee", "chung")

restaurant1= Restaurant.new("shake shack")
restaurant2= Restaurant.new("wasabi")
restaurant3= Restaurant.new("burger king")
restaurant4= Restaurant.new("mcdonalds")

review1= Review.new(customer1, restaurant1, "good")
review4= Review.new(customer1, restaurant2, "bad")
review8= Review.new(customer1, restaurant4, "good")

review2= Review.new(customer2, restaurant1, "good")
review5= Review.new(customer2, restaurant3, "bad")

review3= Review.new(customer3, restaurant2, "good")
review6= Review.new(customer3, restaurant3, "good")

review7= Review.new(customer4, restaurant4, "bad")
review7= Review.new(customer4, restaurant1, "bad")

# puts review1.customers
# puts review2.restaurant

customer1.add_review(restaurant3, "so so")
customer2.add_review(restaurant2, "so so")
customer3.add_review(restaurant1, "so so")
customer4.add_review(restaurant2, "so so")

# puts restaurant1.reviews
# puts restaurant1.customers
# puts Customer.find_all_by_first_name("jee")
# puts restaurant1.reviews
Pry.start
