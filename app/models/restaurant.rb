class Restaurant
  attr_accessor :name, :reviews, :customers

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant_instance|
      restaurant_instance.name == name
    end
  end

  def reviews
    Review.all.select do |review_instance|
      review_instance.restaurant == self
    end
  end

  def customers
    Review.all.select do |review_instance|
      review_instance.restaurant == self
    end.map do |review|
      review.customer
    end
  end

end
