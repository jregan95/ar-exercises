require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'



puts "Exercise 7"
puts "----------"

new_name = gets.chomp

store = Store.create(name: new_name)

puts store.errors.full_messages

# Your code goes here ...
#bundle exec ruby exercises/exercise_7.rb