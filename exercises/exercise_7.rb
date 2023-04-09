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
class Employee < ActiveRecord::Base
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }, presence: true
    validates :store_id, presence: true
end

class Store < ActiveRecord::Base
    validates :name, length: { minimum: 3 }, presence: true
    validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }, presence: true
end

puts 'Create a new store: '
@store_name = gets.chomp
@new_store = Store.create(name: @store_name)

puts "Errors? #{Store.create.errors.any?}"