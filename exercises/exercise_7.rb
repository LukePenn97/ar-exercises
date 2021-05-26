require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

@employee1 = @store1.employees.create(hourly_rate: 40)
puts @employee1.errors.full_messages
@store = Store.create(name: "Gololo")
puts @store.errors.full_messages