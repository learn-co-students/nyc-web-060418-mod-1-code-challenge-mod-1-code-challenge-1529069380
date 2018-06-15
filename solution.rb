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
    all.find do |restaurant|
      name == restaurant.name
    end
  end

  def reviews
    Review.all.select do |review|
      review.review_restaurant == self
    end
  end

  def customers
    matched_reviews = Review.all.select do |review|
      review.restaurant == self
    end
    matched_reviews.map do |review|
      review.review_customer
    end
  end

end

class Review

@@all = []

  attr_reader :review_restaurant, :review_customer, :content

  def initialize(restaurant, customer, content)
    @review_restaurant = restaurant
    @review_customer = customer
    @content = content
    self.class.all << self
  end

  def self.all
    @@all
  end

  def customer
    self.review_customer
  end

  def restaurant
    self.review_restaurant
  end

end

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
    all.find do |customer|
      name == customer.full_name
    end
  end

  def self.find_all_by_first_name(name)
    all.select do |customer|
      name == customer.first_name
    end
  end

  def self.all_names
    all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    Review.new(restaurant, self, content)
  end

end
