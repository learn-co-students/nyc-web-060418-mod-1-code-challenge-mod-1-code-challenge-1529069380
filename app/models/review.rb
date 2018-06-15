class Review

  @@all = []
  attr_accessor :review, :user, :restaurant

  def initialize(review, user, restaurant)
    @review = review
    @user = user
    @restaurant = restaurant
    self.class.all << self
  end
  def self.all
    @@all
  end


end
