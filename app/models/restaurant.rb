class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def find_by_name
    self.all.find do |name|
      name == full_name
    end
  end

  def reviews
    Review.all
  end

  def customers
    reviews.select do |review|
      review.restaurant == self.name
      review.customer
    end
  end

end
