require_relative '../config/environment.rb'
require_relative '../app/models/customer'
require_relative '../app/models/restaurant'
require_relative '../app/models/review'

def reload
  load 'config/environment.rb'
end


cust1 = Customer.new("jane", "doe")
cust2 = Customer.new("donald", "trump")
cust3 = Customer.new("barak", "obama")

res_1 = Restaurant.new("joes pizza")
res_2 = Restaurant.new("sushi on jones")
res_3 = Restaurant.new("ootoya")

review_1 = Review.new("goood", res_1, cust1)
review_2 = Review.new("meh", res_2, cust2)
review_3 = Review.new("bad", res_3, cust3)

# puts Restaurant.find_by_name("ootoya")
Pry.start
