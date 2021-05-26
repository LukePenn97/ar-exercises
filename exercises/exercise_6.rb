require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# @store1 = Store.where(id: 1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Joe", last_name: "Blow", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Sagat", hourly_rate: 60)
@store2.employees.create(first_name: "Jenny", last_name: "Law", hourly_rate: 60)
@store2.employees.create(first_name: "Ashton", last_name: "Kutcher", hourly_rate: 60)
@store2.employees.create(first_name: "Sarah", last_name: "Palin", hourly_rate: 60)