# Destroying all the records in the database
puts "Cleaning database for categories..."
Category.destroy_all
puts "Cleaning database for users..."
User.destroy_all
puts "Cleaning database for tasks..."
Task.destroy_all

puts "-" * 50

require_relative "category_seeds"
puts "-" * 50
require_relative "user_seeds"
puts "-" * 50
require_relative "task_seeds"
puts "-" * 50

puts "All seeds got successfully created!!!"
