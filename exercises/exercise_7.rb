require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "enter name of a store: "
storeName = gets.chomp

newStore = Store.create(
  name: storeName,
  mens_apparel: true
)

# display errors if newStore is not valid
if !newStore.valid?
  puts "\nErrors occured during store creation..."
  puts newStore.errors.full_messages
end

