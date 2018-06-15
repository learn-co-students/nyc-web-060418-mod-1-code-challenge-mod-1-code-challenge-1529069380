class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Review.all.find do |review_instance|
      review_instance.restaurant == self
    end
  end

  def reviews
    Review.all.select do |review_instance|
      review_instance.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review_instance|
      review_instance.customer
    end
  end

end

# * Restaurant.all - DONE
#   * returns an array of all restaurants

# * Restaurant.find_by_name(name)
#   * given a string of restaurant name, returns the first restaurant that matches

# * Restaurant#reviews
#   * returns an array of all reviews for that restaurant

# * Restaurant#customers
#   * returns all of customers who have written reviews of that restaurant. A `Restaurant` has many `Customers` and a `Customer` has many `Restaurants`

class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Review.all.find do |review_instance|
      review_instance.customer == self
    end
  end

  def self.find_all_by_first_name(name)

  end

  def self.all_names
    Review.all.map do |review_instance|
      review_instance.customer
    end
  end

  def add_review(restaurant, content)
    Review.new()
  end


end

# * Customer.all - DONE
#   * should return **all** of the customer instances
#
# * Customer.find_by_name(name)
#   * given a string of a **full name**, returns the **first customer** whose full name matches
#
# * Customer.find_all_by_first_name(name)
#   * given a string of a first name, returns an **array** containing all customers with that first name
#
# * Customer.all_names
#   * should return an **array** of all of the customer full names
#
# * Customer#add_review(restaurant, content)
#   * given a **restaurant object** and some review content (as a string), creates a new review and associates it with that customer and restaurant. A `Review` belongs to a `Customer` and belongs to a `Restaurant`

class Review

  attr_accessor :restaurant, :customer

  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

end

# * Review.all - DONE
#   * returns all of the reviews
#
# * Review#customer - DONE
#   * returns the customer object for that given review
#
# * Review#restaurant - DONE
#   * returns the restaurant object for that given review
