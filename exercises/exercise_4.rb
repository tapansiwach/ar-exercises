require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(
  name: 'Surrey',
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

Store.create(
  name: 'Whistler',
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

Store.create(
  name: 'Yaletown',
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

puts "added 3 more stores to database"
storesCount = Store.count
puts "Now, total number of stores is: #{storesCount}"

puts "\n...filtering for stores carrying mens apparel..."
stores = Store.where(mens_apparel: true)

stores.each do |store|
  name = store.name
  annual_revenue = store.annual_revenue
  puts "Store name: #{name}, with an annual revenue of #{annual_revenue}"
end

puts "\n...filtering for stores carrying womens apparel and annual revenue less than $1M..."
stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)
# this alternate pattern also works
# stores = Store.where(womens_apparel: true, annual_revenue: 0...1000000)

stores.each do |store|
  name = store.name
  annual_revenue = store.annual_revenue
  puts "Store name: #{name}, with an annual revenue of #{annual_revenue}"
end




