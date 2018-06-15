class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    self.all.find do |customer|
      "#{customer.first_name} #{customer.last_name}" == full_name
    end
  end

  def self.find_all_by_first_name(f_name)
    self.all.select do |customer|
      customer.first_name == f_name
    end
  end

  def self.all_names
    self.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant)
    new_review.content = content
    new_review
  end

end
