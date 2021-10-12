require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

puts "------- Store Info ------"
pp @store1
pp @store2

@store1.name = "North Vancouver"
@store1.save

puts "---- Update Store 1 -----"
pp @store1

