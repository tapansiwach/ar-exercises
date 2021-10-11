require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find(1)
@store2 = Store.find(2)

@store1.update(annual_revenue: 350000)

updatedValue = Store.find(1).annual_revenue
puts "Revenue of first store has been update to #{updatedValue}"