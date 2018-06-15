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

  def self.find_by_name(fullname)
    Customer.all.find {|customer| customer.full_name == fullname}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.collect{|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
#
# ching = Customer.new("Ching", "Lim")
# chang = Customer.new("Changmin", "Lim")
# chong = Customer.new("Chong", "Bang")
# mike2 = Customer.new("Mike", "Bang")
# mike = Customer.new('Mike', 'Lee')
# devin = Customer.new('Devin', 'Kim')
# shing = Customer.new('Shing', 'Park')
