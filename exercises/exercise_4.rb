require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Exercise 4: Loading a subset of stores

# Yaletown (annual_revenue of 430000 carries men's and women's apparel)
# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
# Loop through each of these stores and output their name and annual revenue on each line.
  # Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

# 4

surrey = Store.create
surrey.name = "Surrey"
surrey.annual_revenue = 244000
surrey.womens_apparel = true
surrey.mens_apparel = false

whistler = Store.create
whistler.name = "Whistler"
whistler.annual_revenue = 1900000
whistler.womens_apparel = false
whistler.mens_apparel = true

yaletown = Store.create
yaletown.name = "Yaletown"
yaletown.annual_revenue = 430000
yaletown.womens_apparel = true
yaletown.mens_apparel = true

surrey.save
whistler.save
yaletown.save

@stores = Store.all

#2
@mens_stores = Store.where(mens_apparel: 'true')

puts @mens_stores.inspect

# 3
@stores.each do |store|
  puts store.name
  puts store.annual_revenue
end

# 4
@womensStores = Store.where(womens_apparel: 'true')

@womensStores.each do |store|
  if store.annual_revenue < 1000000
    puts "Wow #{store.name} sucks"
  end
end