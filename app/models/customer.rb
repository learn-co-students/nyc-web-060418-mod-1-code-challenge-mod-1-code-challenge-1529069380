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
