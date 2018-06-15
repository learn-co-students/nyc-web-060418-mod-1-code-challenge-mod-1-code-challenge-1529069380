class Review

  @@all = []
  attr_accessor :review, :first_name, :last_name, :restaurant

  def initialize(review,first_name, last_name, restaurant)
    @review = review
    @first_name = first_name
    @last_name  = last_name
    @restaurant = restaurant
    self.class.all << self
  end
  def self.all
    @@all
  end
  def customer
    # * returns the customer object for that given review
    Customer.all.select{|cu| cu.first_name == self.first_name}
  end
  def restaurant
    # * returns the restaurant object for that given review
    Restaurant.all.select{|cu|puts cu}
  end

end




class Review

  @@all = []
  attr_accessor :review, :first_name, :last_name, :restaurant

  def initialize(review,first_name, last_name, restaurant)
    @review = review
    @first_name = first_name
    @last_name  = last_name
    @restaurant = restaurant
    self.class.all << self
  end
  def self.all
    @@all
  end
  def customer
    # * returns the customer object for that given review
    Customer.all.select{|cu| cu.first_name == self.first_name}
  end
  def restaurant
    # * returns the restaurant object for that given review
    Restaurant.all.select{|cu|puts cu}
  end

end


class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end
  # def combine_cus(full_name)
  #   Customer.new(full_name)
  # end
  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
    end

  def self.find_all_by_first_name(name)
    # * given a string of a first name, returns an **array** containing all customers with that first name

  end
  def self.all_names
    # * should return an **array** of all of the customer full names
  end
  def add_review(restaurant, content)
    # * given a **restaurant object** and some review content (as a string), creates a new review and associates it with that customer and restaurant. A `Review` belongs to a `Customer` and belongs to a `Restaurant`
  end
end
