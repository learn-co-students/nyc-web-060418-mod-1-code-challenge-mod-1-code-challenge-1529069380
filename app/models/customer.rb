class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Review.all.find do |review_instance|
      review_instance.customer == self
    end
  end

  def self.find_all_by_first_name(name)

  end

  def self.all_names
    Review.all.map do |review_instance|
      review_instance.customer
    end
  end

  def add_review(restaurant, content)
    Review.new()
  end


end

# * Customer.all - DONE
#   * should return **all** of the customer instances
#
# * Customer.find_by_name(name)
#   * given a string of a **full name**, returns the **first customer** whose full name matches
#
# * Customer.find_all_by_first_name(name)
#   * given a string of a first name, returns an **array** containing all customers with that first name
#
# * Customer.all_names
#   * should return an **array** of all of the customer full names
#
# * Customer#add_review(restaurant, content)
#   * given a **restaurant object** and some review content (as a string), creates a new review and associates it with that customer and restaurant. A `Review` belongs to a `Customer` and belongs to a `Restaurant`
