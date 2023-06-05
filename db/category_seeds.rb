# Create categories

puts "Creating categories..."

Category.create([
                  {
                    name: 'Education',
                    description: 'Discover a community where learners seek help with their educational challenges,
                    offering compensation for your expertise.'
                  },
                  {
                    name: 'Moving',
                    description: 'Join a network where individuals share their moving dilemmas, seeking assistance
                    from reliable helpers in exchange for payment.'
                  },
                  {
                    name: 'Sports',
                    description: 'Be part of a supportive group where people share their fitness goals, searching
                    for guidance and support in return for compensation.'
                  },
                  {
                    name: 'Handyman',
                    description: 'Connect with those in need of home repairs and maintenance, offering your skills
                    to solve their problems for a fair fee.'
                  },
                  {
                    name: 'Beauty',
                    description: 'Become a trusted resource for individuals looking to enhance their appearance,
                    providing beauty services for compensation.'
                  },
                  {
                    name: 'PetCare',
                    description: 'Offer your love and care to pets whose owners seek reliable caregivers, earning
                    money while nurturing adorable companions.'
                  },
                  {
                    name: 'Babysitting',
                    description: 'Provide trustworthy childcare services to busy parents, helping them find peace
                    of mind in exchange for fair compensation.'
                  },
                  {
                    name: 'Cooking',
                    description: 'Share your culinary talents with individuals who crave delicious meals, turning
                    your passion into a rewarding cooking service.'
                  },
                  {
                    name: 'Organizing',
                    description: 'Assist others in decluttering and organizing their lives, offering your skills
                    to create harmonious spaces for a reasonable fee.'
                  },
                  {
                    name: 'Cleaning',
                    description: 'Help individuals maintain clean and tidy environments, offering your cleaning
                    services and leaving a spotless impression for compensation.'
                  },
                  {
                    name: 'Events',
                    description: 'Be a valuable part of creating unforgettable moments for special occasions,
                    offering your event planning expertise and earning money in return.'
                  }
                ])

category_count = Category.count
puts "#{category_count} #{category_count == 1 ? 'category' : 'categories'} got created!"
