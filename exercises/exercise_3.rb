require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

@store3 = Store.find(3)

@store3.delete

puts "There is now only #{Store.count} stores in the database."
