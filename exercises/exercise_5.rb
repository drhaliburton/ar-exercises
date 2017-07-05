require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# 1
@total = Store.sum(:annual_revenue)

puts @total

# 2
@average = Store.average(:annual_revenue)

puts @average

# 3

@numOfBigBoys = Store.where("annual_revenue > ?", 1000000).count

puts @numOfBigBoys
