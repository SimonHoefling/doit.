# Create users

puts "Creating users..."

User.create([
  {
    first_name: 'Simon',
    last_name: 'Hoefling',
    email: 'simon@gmail.com',
    password: '123456'
  },
  {
    first_name: 'Test',
    last_name: 'Tester',
    email: 'test@gmail.com',
    password: '123456'
  }
])
puts "#{User.count} users got created!"
