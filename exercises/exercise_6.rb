require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Rebecca", last_name: "Haliburton", hourly_rate: 600)
@store2.employees.create(first_name: "Shauna", last_name: "Griffin", hourly_rate: 620)
@store1.employees.create(first_name: "Karl", last_name: "Wong", hourly_rate: 50)

puts @store1.employees.inspect
puts @store2.employees.inspect