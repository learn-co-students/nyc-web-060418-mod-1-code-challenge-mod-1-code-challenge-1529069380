class Customer
  @@all = []

  attr_accessor :first_name, :last_name

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

  def self.find_by_name(full_name_arg)
    self.all.find{|customer|customer.full_name == full_name_arg}
  end

  def self.find_all_by_first_name(first_name_arg)
    self.all.select{|customer|customer.first_name == first_name_arg}
  end


  def self.all_names
      #compact it? everyone has to have "full name"
    self.all.map{|customer|customer.full_name}
  end

  def add_review(restaurant, content)
    Review.new(content, restaurant, self)
  end

end

class Restaurant
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(res_name)
    self.all.find{|res|res.name == res_name}
  end

  def reviews
    Review.all.select {|review|review.restaurant == self}
  end

  def customers
    reviews.map{|my_review|my_review.customer}.uniq
  end

end

class Review
  @@all = []

  attr_accessor :name, :restaurant :customer

  def initialize(name, restaurant, customer)
    @name = name
    @restaurant = restaurant
    @customer = customer
    self.class.all << self
  end

  def self.all
    @@all
  end
end
