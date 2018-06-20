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

  def self.find_all_by_first_name(name)
    # * given a string of a first name, returns an **array** containing all customers with that first name
    Customer.all.select{|na|na.first_name == name}
  end

  def self.all_names
    # * should return an **array** of all of the customer full names
    Customer.all.map{|na|na.full_name}
  end
  
  def add_review(restaurant, content)
    # * given a **restaurant object** and some review content (as a string), creates a new review and associates it with that customer and restaurant. A `Review` belongs to a `Customer` and belongs to a `Restaurant`
    Review.new(content, self, restaurant )
  end
end
