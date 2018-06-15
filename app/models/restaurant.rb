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

  def self.find_by_name(find_name)
    self.all.find do |r_name|
      r_name.name == find_name
    end
  end

  def reviews
    Review.all.select do |review_insatnce|
      review_insatnce.restaurant == self
    end
  end

  def customers
    reviews.map do |r|
      r.customer
    end
  end

end
