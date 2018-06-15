class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  #Instance Methods

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  #Class Methods

  def self.all
    @@all
  end

  def self.find_by_name(string)
    all.detect {|customer| customer.full_name == string}
  end

  def self.find_all_by_first_name(string)
    all.select {|customer| customer.first_name == string}
  end

  def self.all_names
    all.collect {|customer| customer.full_name}
  end

end
