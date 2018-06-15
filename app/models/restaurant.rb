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
    # * given a string of restaurant name, returns the first restaurant that matches

    Restaurant.all.find{|res|res.name == name}
  end
  def reviews
    # * returns an array of all reviews for that restaurant
    Review.all.select{|rev|
      rev.restaurant == self}.map{|re|re.review}
  end

  def customers
    # * returns all of customers who have written reviews of that restaurant. A `Restaurant` has many `Customers` and a `Customer` has   many `Restaurants`
    Review.all.select do|rev|
      rev.restaurant == self
    end.map do |re|
      re.user
      # binding.pry
    end
  end

end
