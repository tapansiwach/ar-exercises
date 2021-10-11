require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
third = Store.find(3)
third.destroy

storesCount = Store.count
puts "Remaining stores: #{storesCount}"