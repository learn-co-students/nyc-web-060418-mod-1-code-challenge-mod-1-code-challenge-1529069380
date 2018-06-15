class Customer
  attr_accessor :first_name, :last_name
  @@customers = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self

  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@customers
  end

  def self.all_names
    all_names = Review.all.map {|review| review.customer.first_name + " "+ review.customer.last_name}
  end

  def self.find_all_by_first_name(name_str)
    # all_names = Review.all.map {|review| review.customer.first_name}
    Review.all.select {|review| review.customer.first_name == name_str}
  end

  def self.find_by_name(name_str)
    full_name = name_str.downcase.split(" ")
    Review.all.select {|review| review.customer.first_name == full_name[0] && review.customer.last_name == full_name[1]}
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end
end
