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

  def add_review(restaurant, content)
    Review.new(content, restaurant, self)
  end

  def self.all
    @@all
  end

  def self.find_by_name(fullname)
    Customer.all.find do |customer|
      customer.full_name == fullname
    end
  end

  def self.find_all_by_first_name(firstname)
    Customer.all.find_all do |customer|
      customer.first_name == firstname
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

end
