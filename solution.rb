# Please copy/paste all three classes into this file to submit your solution!
class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end
# should return all of the customer instances

 def self.find_by_name(name)
   self.all.find { |customer| customer.full_name == name }
 end
# given a string of a full name, returns the first customer whose full name matches*************

def self.find_all_by_first_name(name)
  self.all.select { |customer| customer.first_name == name }
end
# given a string of a first name, returns an array containing all customers with that first name

def self.all_names
  self.all.map { |customer| customer.full_name }
end
# should return an array of all of the customer full names***************

def add_review(restaurant, review_content)
    Review.new(restaurant, self, review_content)
end
# given a restaurant object and some review content (as a string), creates a new review and associates it with that customer and restaurant. A Review belongs to a Customer and belongs to a Restaurant

end



class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end
  # returns an array of all restaurants

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name }
  end
  # given a string of restaurant name, returns the first restaurant that matches


  def reviews
    Review.all.select { |review| review.restaurant == self }
  end
  # returns an array of all reviews for that restaurant

  def customers
    reviews.map { |review| review.customer.full_name }.uniq
  end
  # returns all of customers who have written reviews of that restaurant. A Restaurant has many Customers and a Customer has many Restaurants


end






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
