class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    restaurant_instances.map do |restaurant|
      restaurant.review
    end
  end

  def customers
    restaurant_instances.map do |restaurant|
      restaurant.customer
    end.uniq
  end


  private
  def restaurant_instances
    Review.all.select do |review|
      review.restaurant == self
    end
  end

end
