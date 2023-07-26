# Create categories

puts "Creating categories..."

# If i want to add a category i can do it here
categories_with_photos = [
  {
    name: 'Education',
    description: 'Discover a community where learners seek help with their educational challenges, offering compensation for your expertise.',
    photo: 'education-logo.jpg'
  },
  {
    name: 'Moving',
    description: 'Join a network where individuals share their moving dilemmas, seeking assistance from reliable helpers in exchange for payment.',
    photo: 'moving-logo.jpg'
  },
  {
    name: 'Sports',
    description: 'Be part of a supportive group where people share their fitness goals, searching for guidance and support in return for compensation.',
    photo: 'sports-logo.jpg'
  },
  {
    name: 'Handyman',
    description: 'Connect with those in need of home repairs and maintenance, offering your skills to solve their problems for a fair fee.',
    photo: 'handyman-logo.jpg'
  },
  {
    name: 'Beauty',
    description: 'Become a trusted resource for individuals looking to enhance their appearance, providing beauty services for compensation.',
    photo: 'beauty-logo.jpg'
  },
  {
    name: 'PetCare',
    description: 'Offer your love and care to pets whose owners seek reliable caregivers, earning money while nurturing adorable companions.',
    photo: 'petcare-logo.jpg'
  },
  {
    name: 'Babysitting',
    description: 'Provide trustworthy childcare services to busy parents, helping them find peace of mind in exchange for fair compensation.',
    photo: 'babysitting-logo.jpg'
  },
  {
    name: 'Cooking',
    description: 'Share your culinary talents with individuals who crave delicious meals, turning your passion into a rewarding cooking service.',
    photo: 'cooking-logo.jpg'
  },
  {
    name: 'Organizing',
    description: 'Assist others in decluttering and organizing their lives, offering your skills to create harmonious spaces for a reasonable fee.',
    photo: 'organizing-logo.jpg'
  },
  {
    name: 'Cleaning',
    description: 'Help individuals maintain clean and tidy environments, offering your cleaning services and leaving a spotless impression for compensation.',
    photo: 'cleaning-logo.jpg'
  },
  {
    name: 'Events',
    description: 'Be a valuable part of creating unforgettable moments for special occasions, offering your event planning expertise and earning money in return.',
    photo: 'events-logo.jpg'
  }
]

categories_with_photos.each do |category_data|
  category = Category.find_or_create_by(name: category_data[:name])
  category.update(description: category_data[:description])

  file = File.open(Rails.root.join("app/assets/images/#{category_data[:photo]}"))
  category.photo.attach(io: file, filename: category_data[:photo], content_type: "image/jpg")
  category.save
end

category_count = Category.count
puts "#{category_count} #{category_count == 1 ? 'category' : 'categories'} got created!"
