
class Review

attr_accessor :restaurant, :customer, :review_content

@@all = []

def initialize(restaurant, customer, review_content)
  @restaurant = restaurant
  @customer = customer
  @review_content = review_content
  self.class.all << self
end

# returns the customer object for that given review
# returns the restaurant object for that given review

def self.all
  @@all
end
  # returns all of the reviews






end
