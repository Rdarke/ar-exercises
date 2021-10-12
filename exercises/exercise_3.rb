require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

@store3 = Store.find_by(id: 3)
puts "------- Store Info ------"

pp @store3

puts "----- Destroy Store Three -----"

@store3.destroy
puts Store.all.count