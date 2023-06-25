# Create users

puts "Creating users..."

User.create([
              {
                first_name: 'Simon',
                last_name: 'Hoefling',
                email: 'simon@gmail.com',
                password: '123456',
                zip_code: '10997'
              },
              {
                first_name: 'User1',
                last_name: 'Last_name1',
                email: 'user1@gmail.com',
                password: '123456'
              },
              {
                first_name: 'User2',
                last_name: 'Last_name2',
                email: 'user2@gmail.com',
                password: '123456'
              },
              {
                first_name: 'User3',
                last_name: 'Last_name3',
                email: 'user3@gmail.com',
                password: '123456'
              },
              {
                first_name: 'User4',
                last_name: 'Last_name4',
                email: 'user4@gmail.com',
                password: '123456'
              }
            ])

# I added this to give my user an avatar from the seed file
simon = User.first
file = File.open(Rails.root.join("app/assets/images/Simon-Avatar.jpg"))
simon.avatar.attach(io: file, filename: "Simon-Avatar.jpg", content_type: "image/jpg")
simon.save

user_count = User.count
puts "#{user_count} #{user_count == 1 ? 'user' : 'users'} got created!"
