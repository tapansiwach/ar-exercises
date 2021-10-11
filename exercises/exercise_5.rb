require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
totalRevenue = Store.sum("annual_revenue")
averageRevenue = Store.average("annual_revenue")
count = Store.where("annual_revenue >= ?", 1000000).count

puts "total annual revenue of company is #{totalRevenue}"
puts "average annual revenue of company is #{averageRevenue}"
puts "the number of stores that are generating $1M or more in annual sales: #{count}"
