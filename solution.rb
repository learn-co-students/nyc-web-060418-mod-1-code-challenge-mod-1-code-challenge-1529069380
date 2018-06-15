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

  def self.find_by_name(name)
    self.all.find do |customer_instance|
      customer_instance.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer_instance|
      customer_instance.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer_instance|
      customer_instance.full_name
    end
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

end

class Restaurant
  attr_accessor :name, :reviews, :customers

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant_instance|
      restaurant_instance.name == name
    end
  end

  def reviews
    Review.all.select do |review_instance|
      review_instance.restaurant == self
    end
  end

  def customers
    Review.all.select do |review_instance|
      review_instance.restaurant == self
    end.map do |review|
      review.customer
    end
  end

end

class Review

  attr_reader :customer, :restaurant
  attr_accessor :content

  @@all = []

  def initialize(customer, restaurant, content=nil)
    @customer = customer
    @restaurant = restaurant
    @content = content
    self.class.all << self
  end

  def self.all
    @@all
  end

end
