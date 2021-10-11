require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
)

@store1.employees.create(
  first_name: "Jake",
  last_name: "Robbins",
  hourly_rate: 65
)

@store1.employees.create(
  first_name: "Rashad",
  last_name: "Bayram",
  hourly_rate: 55
)

@store1.employees.create(
  first_name: "Lovemore",
  last_name: "Jokonya",
  hourly_rate: 50
)

@store2.employees.create(
  first_name: "Rohit",
  last_name: "Dhand",
  hourly_rate: 70
)

@store2.employees.create(
  first_name: "Pedro",
  last_name: "Gonzalez",
  hourly_rate: 70
)

@store2.employees.create(
  first_name: "Lei",
  last_name: "Fu",
  hourly_rate: 75
)

@store2.employees.create(
  first_name: "Avish",
  last_name: "Kakadia",
  hourly_rate: 65
)