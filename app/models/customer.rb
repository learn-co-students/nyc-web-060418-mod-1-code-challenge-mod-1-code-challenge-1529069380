class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def self.all_names
    self.all.map do |cust_ins|
      cust_ins.full_name
    end
  end

  def self.find_by_name(name)
    self.all.find do |cust_ins|
      cust_ins.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |cust_ins|
      cust_ins.first_name == name
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, review)
    Review.new(restuarant, self, review)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def visited_restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end







end
