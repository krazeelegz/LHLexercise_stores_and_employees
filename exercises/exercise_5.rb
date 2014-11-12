require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@annual_revenue = Store.sum(:annual_revenue)
puts "The total revenue for all Stores is $#{@annual_revenue}."

@average_revenue = Store.average(:annual_revenue).to_i
puts "The average revenue for all Stores is $#{@average_revenue}."

@num_store_over_1mil_rev = Store.where("annual_revenue > ?", 1000000).count
puts "The number of stores with revenue over $1,000,000 is #{@num_store_over_1mil_rev}"






