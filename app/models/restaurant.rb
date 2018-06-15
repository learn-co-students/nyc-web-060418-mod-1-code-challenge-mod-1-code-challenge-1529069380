class Restaurant
  attr_accessor :name
  @@restaurants = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@restaurants
  end

  def self.find_by_name(name_str)
    Restaurant.all.select{|rest| rest.name == name_str}
  end


  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}
  end
end
