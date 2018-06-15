class Customer

  # I also want to be able to change the customer's name, as it does happen IRL.
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

# INSTANCE METHODS

  def full_name
    "#{first_name} #{last_name}"
  end

  # Given a restaurant object and some review content (as a string), creates a new review and associates it with that customer and restaurant. A Review belongs to a Customer and belongs to a Restaurant
  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

# CLASS METHODS

  def self.all
    @@all
  end

# Given a string of a full name, returns the first customer whose full name matches
# I used each for this b/c select would return more than one match (if there was more than one name match in our Customer @@all array.) and we are supposed to return only the first customer w/ the matching name.
  def self.find_by_name(full_name_string)
    Customer.all.each do |customer|
      if customer.full_name == full_name_string
        return customer
      end
    end
  end

# Given a string of a first name, returns an array containing all customers with that first name
  def self.find_all_by_first_name(first_name_string)
    Customer.all.select do |customer|
      customer.first_name == first_name_string
    end
  end

# Returns an array of all of the customer full names
  def self.all_names
    Customer.all.map do |customer_instance|
    customer_instance.full_name
    end
  end

end
