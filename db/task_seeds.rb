# Create tasks

puts "Creating tasks..."

Task.create(
  [
    {
      name: 'Hairstyle for Special Occasion',
      description: 'I need a skilled hairstylist to create an elegant hairstyle for a special event.',
      price: 400_000.0,
      category: Category.find_by(name: 'Beauty'),
      user: User.first,
      location: 'Canggu, Frii Hotel'
    },
    {
      name: 'Fixing a Leaky Faucet',
      description: 'Looking for a reliable handyman to fix a leaky faucet in my kitchen.',
      price: 220_000.0,
      category: Category.find_by(name: 'Handyman'),
      user: User.second,
      location: 'Kuta, Motel Mexicola'
    },
    {
      name: 'Personal Fitness Trainer',
      description: 'Seeking a certified personal fitness trainer to help me achieve my fitness goals.',
      price: 430_000.0,
      category: Category.find_by(name: 'Sports'),
      user: User.third,
      location: 'Kuta, Sky Garden'
    },
    {
      name: 'Furniture Assembly and Disassembly',
      description: 'Need assistance with assembling and disassembling furniture during a move.',
      price: 120_000.0,
      category: Category.find_by(name: 'Moving'),
      user: User.fourth,
      location: 'Kuta, Beachwalk Mall'
    },
    {
      name: 'Math Tutor for High School Student',
      description: 'Searching for a math tutor to help my high school student with algebra.',
      price: 100_000.0,
      category: Category.find_by(name: 'Education'),
      user: User.fifth,
      location: 'Ubud, Black Sheep'
    },
    {
      name: 'Makeup Artist for Photoshoot',
      description: 'Looking for a skilled makeup artist to create stunning looks for a photoshoot.',
      price: 230_000.0,
      category: Category.find_by(name: 'Beauty'),
      user: User.first,
      location: 'Ubud, Mudra Cafe'
    },
    {
      name: 'Painting a Room',
      description: 'Need a reliable handyman to paint a room in my house. ',
      price: 85_000.00,
      category: Category.find_by(name: 'Handyman'),
      user: User.second,
      location: 'Ubud, Clear Cafe'
    },
    {
      name: 'Running Coach',
      description: 'Seeking a running coach to improve my endurance and speed.',
      price: 120_000.0,
      category: Category.find_by(name: 'Sports'),
      user: User.third,
      location: 'Uluwatu, Three Steps coffee'
    },
    {
      name: 'Help with Heavy Lifting',
      description: 'Looking for strong individuals to assist with heavy lifting during a move.',
      price: 95_000.0,
      category: Category.find_by(name: 'Moving'),
      user: User.fourth,
      location: 'Ulu Cliffhouse'
    },
    {
      name: 'English Language Tutor',
      description: 'Seeking an English language tutor to improve my speaking and writing skills.',
      price: 120_000.00,
      category: Category.find_by(name: 'Education'),
      user: User.fifth,
      location: 'Melasti Beach Ungasan'
    },
    {
      name: 'Manicure and Pedicure Services',
      description: 'In need of a skilled nail technician for a manicure and pedicure session. ',
      price: 50_000.0,
      category: Category.find_by(name: 'Beauty'),
      user: User.first,
      location: 'Bali, Semarapura'
    },
    {
      name: 'Fixing a Broken Shelf',
      description: 'Need someone with carpentry skills to fix a broken shelf in my living room.',
      price: 90_000.0,
      category: Category.find_by(name: 'Handyman'),
      user: User.second,
      location: 'Bali, Selemadeg'
    },
    {
      name: 'Yoga Instructor for Private Sessions',
      description: 'Searching for a certified yoga instructor for private yoga sessions.',
      price: 170_000.0,
      category: Category.find_by(name: 'Sports'),
      user: User.third,
      location: 'Bali, Seminyak'
    },
    {
      name: 'Packing and Unpacking Assistance',
      description: 'Looking for helpers to assist with packing and unpacking belongings during a move.',
      price: 45_000.00,
      category: Category.find_by(name: 'Moving'),
      user: User.fourth,
      location: 'Bali, Pulukan'
    },
    {
      name: 'Science Tutor for Middle School Student',
      description: 'Seeking a science tutor to help my middle school student with biology.',
      price: 85_000.00,
      category: Category.find_by(name: 'Education'),
      user: User.fifth,
      location: 'Uluwatu'
    },
    {
      name: 'Haircut and Styling for Men',
      description: 'Need a skilled hairstylist for a haircut and styling session for men.',
      price: 75_000.0,
      category: Category.find_by(name: 'Beauty'),
      user: User.first,
      location: 'Denpasar'
    },
    {
      name: 'Installing Shelves in a Closet',
      description: 'Looking for a handyman to install shelves in a closet for better organization.',
      price: 70_000.0,
      category: Category.find_by(name: 'Handyman'),
      user: User.second,
      location: 'Ubud'
    },
    {
      name: 'Personal Swimming Instructor',
      description: 'Seeking a personal swimming instructor to improve my swimming technique.',
      price: 85_000.0,
      category: Category.find_by(name: 'Sports'),
      user: User.third,
      location: 'Bali, Seminyak'
    },
    {
      name: 'Furniture Disposal and Recycling',
      description: 'Need assistance with disposing and recycling old furniture during a move.',
      price: 40_000.0,
      category: Category.find_by(name: 'Moving'),
      user: User.fourth,
      location: 'Kuta'
    },
    {
      name: 'History Tutor for College Student',
      description: 'Searching for a history tutor to help me with my college-level history course.',
      price: 30_000.00,
      category: Category.find_by(name: 'Education'),
      user: User.fifth,
      location: 'Bali, Pulukan'
    },
    {
      name: 'SAT Exam Prep Tutor',
      description: 'Seeking an experienced tutor to help me prepare for the SAT exam.',
      price: 140_000.00,
      category: Category.find_by(name: 'Education'),
      user: User.first,
      location: 'Denpasar'
    },
    {
      name: 'Professional Makeup Application',
      description: 'Looking for a makeup artist to do a professional makeup application for a special occasion.',
      price: 110_000.0,
      category: Category.find_by(name: 'Beauty'),
      user: User.second,
      location: 'Ubud'
    },
    {
      name: 'Assembling a Bookshelf',
      description: 'Need help with assembling a bookshelf and ensuring it is stable.',
      price: 45_000.0,
      category: Category.find_by(name: 'Handyman'),
      user: User.third,
      location: 'Bali, Seminyak'
    },
    {
      name: 'Tennis Coach for Beginners',
      description: 'Searching for a tennis coach to teach me the basics of playing tennis.',
      price: 90_000.0,
      category: Category.find_by(name: 'Sports'),
      user: User.fourth,
      location: 'Kuta'
    },
    {
      name: 'Packing Supplies and Materials Delivery',
      description: 'Looking for someone to deliver packing supplies and materials for an upcoming move.',
      price: 25_000.00,
      category: Category.find_by(name: 'Moving'),
      user: User.fifth,
      location: 'Uluwatu'
    },
    {
      name: 'Online Math Tutoring for Elementary Student',
      description: 'Seeking an online math tutor to help my elementary school student with arithmetic.',
      price: 50_000.00,
      category: Category.find_by(name: 'Education'),
      user: User.first,
      location: 'Bali, Pulukan'
    },
    {
      name: 'Bridal Hair and Makeup Services',
      description: 'Looking for a professional hairstylist and makeup artist for bridal hair and makeup services.',
      price: 150_000.0,
      category: Category.find_by(name: 'Beauty'),
      user: User.second,
      location: 'Ubud'
    },
    {
      name: 'Repairing a Leaky Roof',
      description: 'Need a skilled handyman to repair a leaky roof in my house.',
      price: 170_000.0,
      category: Category.find_by(name: 'Handyman'),
      user: User.third,
      location: 'Bali, Seminyak'
    },
    {
      name: 'Personal Basketball Trainer',
      description: 'Searching for a personal basketball trainer to improve my basketball skills.',
      price: 95_000.0,
      category: Category.find_by(name: 'Sports'),
      user: User.fourth,
      location: 'Kuta'
    },
    {
      name: 'Loading and Unloading Truck',
      description: 'Looking for individuals to help with loading and unloading items onto a moving truck.',
      price: 75_000.00,
      category: Category.find_by(name: 'Moving'),
      user: User.fifth,
      location: 'Uluwatu'
    },





    {
      name: 'Evening Babysitter Needed',
      description: 'Looking for a responsible babysitter to watch our kids for a few hours in the evening while we attend an event.',
      price: 100_000.00,
      category: Category.find_by(name: 'Babysitting'),
      user: User.first,
      location: 'Uluwatu'
    },
    {
      name: 'Weekend Childcare Assistant',
      description: 'Seeking a reliable childcare assistant to help with the kids over the weekends while we run errands.',
      price: 120_000.00,
      category: Category.find_by(name: 'Babysitting'),
      user: User.second,
      location: 'Kuta'
    },
    {
      name: 'After-School Playtime Supervisor',
      description: 'Need someone to supervise playtime and activities for our child after school hours.',
      price: 80_000.00,
      category: Category.find_by(name: 'Babysitting'),
      user: User.third,
      location: 'Bali, Abiansemal'
    },
    {
      name: 'Date Night Babysitter',
      description: 'Looking for a trustworthy babysitter to watch our kids during occasional date nights.',
      price: 45_000.00,
      category: Category.find_by(name: 'Babysitting'),
      user: User.fourth,
      location: 'Bali, Pulukan'
    },
    {
      name: 'Toddler Playgroup Organizer',
      description: 'Seeking someone to organize playgroups for toddlers in our neighborhood.',
      price: 60_000.00,
      category: Category.find_by(name: 'Babysitting'),
      user: User.fifth,
      location: 'Uluwatu'
    },
    {
      name: 'Deep Cleaning for New Home',
      description: 'Need help with deep cleaning our new home before we move in.',
      price: 150_000.00,
      category: Category.find_by(name: 'Cleaning'),
      user: User.first,
      location: 'Kuta'
    },
    {
      name: 'Weekly Housekeeping Services',
      description: 'Seeking regular housekeeping services to keep our home tidy and clean.',
      price: 125_000.00,
      category: Category.find_by(name: 'Cleaning'),
      user: User.second,
      location: 'Denpasar'
    },
    {
      name: 'Spring Cleaning Assistance',
      description: 'Looking for helpers to assist with thorough spring cleaning of our entire house.',
      price: 100_000.00,
      category: Category.find_by(name: 'Cleaning'),
      user: User.third,
      location: 'Sanur'
    },
    {
      name: 'Post-Party Cleanup Crew',
      description: 'Need a cleanup crew to tidy up after a party at our place.',
      price: 75_000.00,
      category: Category.find_by(name: 'Cleaning'),
      user: User.fourth,
      location: 'Uluwatu'
    },
    {
      name: 'Office Cleaning Services',
      description: 'Seeking professional cleaning services for our office space.',
      price: 200_000.00,
      category: Category.find_by(name: 'Cleaning'),
      user: User.fifth,
      location: 'Sanur'
    },
    {
      name: 'Personal Chef for Family Dinner',
      description: 'Searching for a personal chef to prepare a special family dinner.',
      price: 650_000.00,
      category: Category.find_by(name: 'Cooking'),
      user: User.first,
      location: 'Bali, Abiansemal'
    },
    {
      name: 'Meal Prep for the Week',
      description: 'Need help with meal prepping for the entire week.',
      price: 75_000.00,
      category: Category.find_by(name: 'Cooking'),
      user: User.second,
      location: 'Sanur'
    },
    {
      name: 'Cooking Class Instructor',
      description: 'Seeking a cooking class instructor to teach a small group of beginners.',
      price: 100_000.00,
      category: Category.find_by(name: 'Cooking'),
      user: User.third,
      location: 'Sanur'
    },
    {
      name: 'Healthy Meal Planner',
      description: 'Looking for someone to plan nutritious and delicious meals for the family.',
      price: 50_000.00,
      category: Category.find_by(name: 'Cooking'),
      user: User.fourth,
      location: 'Sanur'
    },
    {
      name: 'Catering for Birthday Party',
      description: 'Need a caterer for a birthday party with a variety of dishes.',
      price: 165_000.00,
      category: Category.find_by(name: 'Cooking'),
      user: User.fifth,
      location: 'Sanur'
    },
    {
      name: 'Event Photographer Needed',
      description: 'Searching for a skilled photographer to capture moments at our special event.',
      price: 300_000.00,
      category: Category.find_by(name: 'Events'),
      user: User.first,
      location: 'Sanur'
    },
    {
      name: 'Party Decorator',
      description: 'Looking for a creative decorator to set up the venue for our party.',
      price: 85_000.00,
      category: Category.find_by(name: 'Events'),
      user: User.second,
      location: 'Bali, Pulukan'
    },
    {
      name: 'Wedding Planner Assistant',
      description: 'Need an assistant to help with organizing and coordinating wedding details.',
      price: 120_000.00,
      category: Category.find_by(name: 'Events'),
      user: User.third,
      location: 'Uluwatu'
    },
    {
      name: 'Musician for Anniversary Celebration',
      description: 'Seeking a musician to perform at our anniversary celebration.',
      price: 150_000.00,
      category: Category.find_by(name: 'Events'),
      user: User.fourth,
      location: 'Bali, Abiansemal'
    },
    {
      name: 'Event Emcee/MC',
      description: 'Looking for a charismatic MC to host and engage the audience at our event.',
      price: 100_000.00,
      category: Category.find_by(name: 'Events'),
      user: User.fifth,
      location: 'Sanur'
    },
    {
      name: 'Dog Walking Services',
      description: 'Need a reliable dog walker to take our dog for regular walks.',
      price: 50_000.00,
      category: Category.find_by(name: 'PetCare'),
      user: User.first,
      location: 'Sanur'
    },
    {
      name: 'Cat Sitting during Vacation',
      description: 'Seeking a cat sitter to care for our cat while we are away on vacation.',
      price: 75_000.00,
      category: Category.find_by(name: 'PetCare'),
      user: User.second,
      location: 'Kuta'
    },
    {
      name: 'Pet Grooming Services',
      description: 'Looking for a skilled pet groomer to groom our furry friends.',
      price: 45_000.00,
      category: Category.find_by(name: 'PetCare'),
      user: User.third,
      location: 'Sanur'
    },
    {
      name: 'Dog Training Sessions',
      description: 'Need a dog trainer to help with basic obedience training for our dog.',
      price: 50_000.00,
      category: Category.find_by(name: 'PetCare'),
      user: User.fourth,
      location: 'Sanur'
    },
    {
      name: 'Pet Boarding for a Weekend',
      description: 'Seeking a safe and caring place for our pets to stay during a weekend trip.',
      price: 250_000.00,
      category: Category.find_by(name: 'PetCare'),
      user: User.fifth,
      location: 'Sanur'
    },
    {
      name: 'Closet Organization Expert',
      description: 'Looking for an organizing expert to declutter and organize our closets.',
      price: 110_000.00,
      category: Category.find_by(name: 'Organizing'),
      user: User.first,
      location: 'Denpasar'
    },
    {
      name: 'Home Office Setup Assistance',
      description: 'Need help organizing our home office for maximum productivity.',
      price: 75_000.00,
      category: Category.find_by(name: 'Organizing'),
      user: User.second,
      location: 'Kuta'
    },
    {
      name: 'Kitchen Pantry Organizer',
      description: 'Seeking someone to organize and label our kitchen pantry.',
      price: 50_000.00,
      category: Category.find_by(name: 'Organizing'),
      user: User.third,
      location: 'Bali, Abiansemal'
    },
    {
      name: 'Garage Storage Solutions',
      description: 'Looking for ideas and assistance in organizing our garage space.',
      price: 145_000.00,
      category: Category.find_by(name: 'Organizing'),
      user: User.fourth,
      location: 'Kuta'
    },
    {
      name: 'Digital File Organization',
      description: 'Need help organizing and categorizing digital files on our computer.',
      price: 35_000.00,
      category: Category.find_by(name: 'Organizing'),
      user: User.fifth,
      location: 'Bali, Pulukan'
    }
  ]
)

task_count = Task.count
puts "#{task_count} #{task_count == 1 ? 'task' : 'tasks'} got created!"
