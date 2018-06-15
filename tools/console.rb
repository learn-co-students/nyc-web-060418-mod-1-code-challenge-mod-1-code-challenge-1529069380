require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

r1 = Restaurant.new('r1')
r2 = Restaurant.new('r2')
r3 = Restaurant.new('r3')

c1 = Customer.new('C1', 'c1')
c2 = Customer.new('C2', 'c2')
c3 = Customer.new('C3', 'c3')
c4 = Customer.new('C4', 'c4')
c5 = Customer.new('C5', 'c5')
c6 = Customer.new('C5', 'c6')

rv1 = c1.add_review(r1, 'Pretty good!')
rv2 = c1.add_review(r1, 'Insanely bad!')
rv3 = c5.add_review(r2, 'Yes!')
rv4 = c2.add_review(r2, 'Ok!')
rv5 = c3.add_review(r1, 'Whatever!')
rv6 = c4.add_review(r3, 'Damn good!')

binding.pry

# Pry.start
