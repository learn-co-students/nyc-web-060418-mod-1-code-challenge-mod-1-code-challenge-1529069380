class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all = [] << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name
    self.all.find do |name|
      name == full_name
    end
  end

  def self.find_all_by_first_name
    self.all.select do  |first_name|
      first_name == @first_name
    end
  end

  def self.all_names
    self.all.full_name each do |full_name|
      full_name
    end
  end

  def add_review(restaurant, content)
    Restaurant.new(restaurant, content)
  end

end
