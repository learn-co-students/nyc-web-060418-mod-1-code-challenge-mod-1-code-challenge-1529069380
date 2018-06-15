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
# should return all of the customer instances

 def self.find_by_name(name)
   self.all.find { |customer| customer.full_name == name }
 end
# given a string of a full name, returns the first customer whose full name matches*************

def self.find_all_by_first_name(name)
  self.all.select { |customer| customer.first_name == name }
end
# given a string of a first name, returns an array containing all customers with that first name

def self.all_names
  self.all.map { |customer| customer.full_name }
end
# should return an array of all of the customer full names***************

def add_review(restaurant, review_content)
    Review.new(restaurant, self, review_content)
end
# given a restaurant object and some review content (as a string), creates a new review and associates it with that customer and restaurant. A Review belongs to a Customer and belongs to a Restaurant

end
