require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(
  :name => "Surrey",
  :annual_revenue => 224000,
  :mens_apparel => false,
  :womens_apparel => true,
)

Store.create(
  :name => "Whistler",
  :annual_revenue => 1900000,
  :mens_apparel => true,
  :womens_apparel => false,
)

Store.create(
  :name => "Yaletown",
  :annual_revenue => 430000,
  :mens_apparel => true,
  :womens_apparel => true,
)

puts "--- Created Stores ---"
puts Store.all.count

puts "---- Mens Stores -----"
@mens_stores = Store.where(mens_apparel: true)
pp @mens_stores

@mens_stores.each do |store|
  puts "Store Name = #{store.name}. Store revenue = #{store.annual_revenue}"
end

puts "--- Womens Stores ---"
womens_stores = Store.where("womens_apparel = true and annual_revenue < 1000000")
pp womens_stores