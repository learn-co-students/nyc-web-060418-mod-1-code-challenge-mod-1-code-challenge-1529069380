# Please copy/paste all three classes into this file to submit your solution!

#Customer Class#

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
    Review.new(restaurant, self, content)
  end

end

############################################
#Restaurant Class#

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
    self.reviews.map do |review_instance|
      review_instance.customer
    end.uniq
  end

end

############################################
#Review Class#

class Review

  attr_reader :restaurant, :customer, :content

  @@all = []

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    self.class.all << self
  end

  def self.all
    @@all
  end

end
