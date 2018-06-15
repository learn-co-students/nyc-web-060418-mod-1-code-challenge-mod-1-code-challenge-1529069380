class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(full_name)
    self.all.find do |customer|
      customer.full_name = full_name
    end
  end

  #given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(first_name)
    self.all.select do |customer_name|
      customer_name.first_name == first_name
    end
  end

  #should return an array of all of the customer full names
  def self.all_names
    self.all.map do |name|
      name.full_name
    end
  end

  #given a restaurant object and some review content (as a string), creates a new review and associates it with that customer and restaurant. A Review belongs to a Customer and belongs to a Restaurant
  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  #should return all of the customer instances
  def self.all
    @@all
  end

end

class Review

  @@all = []

  attr_accessor :customer, :restaurant, :content

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  #returns the customer object for that given review
  # def customer
  # @customer - see attr_accessor
  # end

  # #returns the restaurant object for that given review
  # def restaurant
  # @restaurant - see attr_accessor
  # end

  #returns all of the reviews
  def self.all
    @@all
  end

end

class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(restaurant_name)
    self.all.find do |restaurant|
      restaurant.name = restaurant_name
    end
  end

  #returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  #returns all of customers who have written reviews of that restaurant. A Restaurant has many Customers and a Customer has many Restaurants
  def customers
    reviews.map do |review|
      review.customer
    end
  end

  #returns an array of all restaurants
  def self.all
    @@all
  end

end
