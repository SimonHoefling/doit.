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
                first_name: 'Tester1',
                last_name: 'Tester',
                email: 'tester1@gmail.com',
                password: '123456'
              },
              {
                first_name: 'Tester2',
                last_name: 'Tester',
                email: 'tester2@gmail.com',
                password: '123456'
              },
              {
                first_name: 'Tester3',
                last_name: 'Tester',
                email: 'tester3@gmail.com',
                password: '123456'
              },
              {
                first_name: 'Tester4',
                last_name: 'Tester',
                email: 'tester4@gmail.com',
                password: '123456'
              }
            ])

user_count = User.count
puts "#{user_count} #{user_count == 1 ? 'user' : 'users'} got created!"
