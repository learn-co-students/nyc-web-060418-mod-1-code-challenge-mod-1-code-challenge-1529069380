class Customer
  
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.find {|c| c.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|c| c.first_name == name}
  end

  def self.all_names
    self.all.map {|c| c.full_name}
  end

  def add_review(restaurant, content)
    Review.new(restaurant: restaurant, customer: self, content: content)
  end

end
