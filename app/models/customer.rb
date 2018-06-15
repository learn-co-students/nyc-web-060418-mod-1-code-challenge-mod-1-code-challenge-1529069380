class Customer
  attr_accessor :first_name, :last_name

  @@all_customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

# instance methods

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

# class methods

  def self.all
    @@all_customers
  end

  def self.find_by_name(name)
    all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    all.select {|customer| customer.first_name.downcase == name}
  end

  def self.all_names
    all.collect {|customer| customer.full_name}
  end
end
