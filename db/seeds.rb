# This is the main seed file. It is used to create all the other seeds.
# It is also used to destroy all the records in the database. This is useful when
# you want to reset the database to its initial state.

puts "
 _______  _______  _______  ______   _______
|       ||       ||       ||      | |       |
|  _____||    ___||    ___||  _    ||  _____|
| |_____ |   |___ |   |___ | | |   || |_____
|_____  ||    ___||    ___|| |_|   ||_____  |
 _____| ||   |___ |   |___ |       | _____| |
|_______||_______||_______||______| |_______|

"

# Destroying all the records in the database
puts "Cleaning database for categories..."
Category.destroy_all
puts "Cleaning database for users..."
User.destroy_all
puts "Cleaning database for tasks..."
Task.destroy_all
puts "Cleaning database for chatrooms..."
Chatroom.destroy_all

puts "-" * 50

require_relative "category_seeds"
puts "-" * 50
require_relative "user_seeds"
puts "-" * 50
require_relative "task_seeds"
puts "-" * 50

puts "All seeds got successfully created!!!"
