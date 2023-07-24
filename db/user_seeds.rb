# Create users

puts "Creating users..."

User.create([
              {
                first_name: 'Simon',
                last_name: 'Hoefling',
                email: 'simon@gmail.com',
                password: '123456',
                zip_code: '10997',
                street_name: 'Banana Avenue',
                house_number: '9'
              },
              {
                first_name: 'User1',
                last_name: 'Last_name1',
                email: 'user1@gmail.com',
                password: '123456',
                zip_code: '10996',
                street_name: 'Banana Road',
                house_number: '14'
              },
              {
                first_name: 'User2',
                last_name: 'Last_name2',
                email: 'user2@gmail.com',
                password: '123456',
                zip_code: '10995',
                street_name: 'Penny Lane',
                house_number: '45'
              },
              {
                first_name: 'User3',
                last_name: 'Last_name3',
                email: 'user3@gmail.com',
                password: '123456',
                zip_code: '97463',
                street_name: 'Downing Street',
                house_number: '73'
              },
              {
                first_name: 'User4',
                last_name: 'Last_name4',
                email: 'user4@gmail.com',
                password: '123456',
                zip_code: '36489',
                street_name: 'Abbey Road',
                house_number: '99'
              }
            ])

# This adds an avatar to the first 3 users
simon = User.first
file = File.open(Rails.root.join("app/assets/images/Simon-Avatar.jpg"))
simon.avatar.attach(io: file, filename: "Simon-Avatar.jpg", content_type: "image/jpg")
simon.save

user1 = User.second
file = File.open(Rails.root.join("app/assets/images/user-1.jpg"))
user1.avatar.attach(io: file, filename: "user-1.jpg", content_type: "image/jpg")
user1.save

user2 = User.third
file = File.open(Rails.root.join("app/assets/images/user-2.jpg"))
user2.avatar.attach(io: file, filename: "user-2.jpg", content_type: "image/jpg")
user2.save

user_count = User.count
puts "#{user_count} #{user_count == 1 ? 'user' : 'users'} got created!"
