require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Michael", "O'Brien")
customer2 = Customer.new("Jackson", "Sennett")
customer3 = Customer.new("Michael", "Jackson")
restaurant1 = Restaurant.new("Royal Pizza")
restaurant2 = Restaurant.new("Drunken Dumpling")
binding.pry
