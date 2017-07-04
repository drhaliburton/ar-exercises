require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

burnaby = Store.create
burnaby.name = "Burnaby"
burnaby.annual_revenue = 300000
burnaby.womens_apparel = true
burnaby.mens_apparel = true

richmond = Store.create
richmond.name = "Richmond"
richmond.annual_revenue = 1260000
richmond.womens_apparel = true
richmond.mens_apparel = false

gastown = Store.create
gastown.name = "Gastown"
gastown.annual_revenue = 190000
gastown.womens_apparel = false
gastown.mens_apparel = true

puts Store.count()

puts gastown.name