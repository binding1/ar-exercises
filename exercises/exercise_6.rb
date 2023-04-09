require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Store.has_many(:employees)

Employee.belongs_to(:store)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Khurra", last_name: "Vi", hourly_rate: 55)
@store1.employees.create(first_name: "K", last_name: "V", hourly_rate: 80)
@store2.employees.create(first_name: "Khur", last_name: "Vir", hourly_rate: 70)
@store2.employees.create(first_name: "Khuu", last_name: "Viking", hourly_rate: 90)
@store2.employees.create(first_name: "Kuh", last_name: "Viki", hourly_rate: 40)