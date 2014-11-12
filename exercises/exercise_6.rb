require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store4 = Store.find(4)
@store5 = Store.find(5)

@store1.employees.create(first_name: "Krish", last_name: "Jolliffe", hourly_rate: 100)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 25)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 25)


@store2.employees.create(first_name: "Frank", last_name: "Jones", hourly_rate: 10)
@store2.employees.create(first_name: "Jim", last_name: "Johnson", hourly_rate: 20)
@store2.employees.create(first_name: "Jerry", last_name: "Siendfeld", hourly_rate: 25)

@store4.employees.create(first_name: "Tom", last_name: "Jona", hourly_rate: 15)
@store4.employees.create(first_name: "Jimmy", last_name: "Johnsen", hourly_rate: 35)
@store4.employees.create(first_name: "Gerry", last_name: "Stiendfeld", hourly_rate: 45)

@store5.employees.create(first_name: "Homer", last_name: "Simpson", hourly_rate: 5)
@store5.employees.create(first_name: "Steve", last_name: "Mann", hourly_rate: 42.50)
@store5.employees.create(first_name: "Hugo", last_name: "Mallory", hourly_rate: 33)

@num_employees = Employee.count(:first_name)
puts "The total number of employees at all stores is now #{@num_employees}."