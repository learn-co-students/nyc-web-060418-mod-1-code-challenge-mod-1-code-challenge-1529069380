# Please copy/paste all three classes into this file to submit your solution!


class Review

  attr_accessor :restaurant, :customer, :review
  @@all = []

  def initialize(review, restaurant, customer)
    @review, @restaurant, @customer = review, restaurant, customer
    self.class.all << self
  end

  def self.all
    @@all
  end

end

##################################

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

  def reviews
    restaurant_instances.map do |restaurant|
      restaurant.review
    end
  end

  def customers
    restaurant_instances.map do |restaurant|
      restaurant.customer
    end.uniq
  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end


  private
  def restaurant_instances
    Review.all.select do |review|
      review.restaurant == self
    end
  end

end

##################################

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

  def add_review(restaurant, content)
    Review.new(content, restaurant, self)
  end

  def self.all
    @@all
  end

  def self.find_by_name(fullname)
    Customer.all.find do |customer|
      customer.full_name == fullname
    end
  end

  def self.find_all_by_first_name(firstname)
    Customer.all.find_all do |customer|
      customer.first_name == firstname
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

end
