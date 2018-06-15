class Restaurant
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(res_name)
    # * Restaurant.find_by_name(name)
      # * given a string of restaurant name, returns the first restaurant that matches
    self.all.find{|res|res.name == res_name}
  end

  def reviews
    # * Restaurant#reviews
    #   * returns an array of all reviews for that restaurant
    Review.all.select{|review|review.restaurant == self}
  end

  def customers


      # * Restaurant#customers
        # * returns all of customers who have written reviews of that restaurant. A `Restaurant` has many `Customers` and a `Customer` has many `Restaurants`

  #review knows about the restaurant and customer
  #if i can retrieve a review of that restaurant and pull out the customer name
    reviews.map{|my_review|my_review.customer}.uniq
  end

end
