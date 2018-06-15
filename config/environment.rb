require 'bundler/setup'
Bundler.require
require_all 'app'


abby = Customer.new("Abby", "Williams")
barry = Customer.new("Barack", "Obama")
cassie = Customer.new("Cassandra", "Sandsmark")
deena = Customer.new("Deena", "Hello")
eggsy = Customer.new("Franklin", "Egerton")
franky = Customer.new("Franklin", "Roosevelt")

jacobs = Restaurant.new("Jacob's Bistro")
jacks = Restaurant.new("Jacks Wife Freda")
shake = Restaurant.new("Harlem Shake")
good = Restaurant.new("Good Hope")
mcd = Restaurant.new("McDonald's")

Review.new(jacobs, eggsy, "delicious!")
Review.new(shake, cassie, "delightful atmosphere")
Review.new(mcd, eggsy, "dirty but delicious")
Review.new(good, deena, "bad service, good food")
Review.new(jacks, barry, "America's Best")
Review.new(jacks, cassie, "I saw the pres here")
Review.new(shake, cassie, "I went back and it was even better")
