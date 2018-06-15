class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(restaurant_name)
    Restaurant.all.find do |restaurant|
      restaurant.name == restaurant_name
    end
  end

  def reviews
    Restaurant.all.select do |restaurant|
      restaurant.reviews
    end
  end

  def customers
   this_restaurant = Restaurant.all.select {|restaurant| restaurant.name == self}
    this_restaurant.customer
  end

end
