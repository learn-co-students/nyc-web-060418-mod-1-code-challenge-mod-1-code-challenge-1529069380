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
    all.find do |restaurant|
      name == restaurant.name
    end
  end

  def reviews
    Review.all.select do |review|
      review.review_restaurant == self
    end
  end

  def customers
    matched_reviews = Review.all.select do |review|
      review.restaurant == self
    end
    matched_reviews.map do |review|
      review.review_customer
    end
  end


end
