# Create tasks

puts "Creating tasks..."

Task.create(
  [
    {
      name: 'Hairstyle for Special Occasion',
      description: 'I need a skilled hairstylist to create an elegant hairstyle for a special event.',
      price: 400_000.0,
      category: Category.fifth,
      user: User.first,
      location: 'Denpasar'
    },
    {
      name: 'Fixing a Leaky Faucet',
      description: 'Looking for a reliable handyman to fix a leaky faucet in my kitchen.',
      price: 220_000.0,
      category: Category.fourth,
      user: User.second,
      location: 'Ubud'
    },
    {
      name: 'Personal Fitness Trainer',
      description: 'Seeking a certified personal fitness trainer to help me achieve my fitness goals.',
      price: 430_000.0,
      category: Category.third,
      user: User.third,
      location: 'Berawa'
    },
    {
      name: 'Furniture Assembly and Disassembly',
      description: 'Need assistance with assembling and disassembling furniture during a move.',
      price: 120_000.0,
      category: Category.second,
      user: User.fourth,
      location: 'Kuta'
    },
    {
      name: 'Math Tutor for High School Student',
      description: 'Searching for a math tutor to help my high school student with algebra.',
      price: 100_000.0,
      category: Category.first,
      user: User.fifth,
      location: 'Uluwatu'
    },
    {
      name: 'Makeup Artist for Photoshoot',
      description: 'Looking for a skilled makeup artist to create stunning looks for a photoshoot.',
      price: 230_000.0,
      category: Category.fifth,
      user: User.first,
      location: 'Denpasar'
    },
    {
      name: 'Painting a Room',
      description: 'Need a reliable handyman to paint a room in my house. ',
      price: 85_000.00,
      category: Category.fourth,
      user: User.second,
      location: 'Ubud'
    },
    {
      name: 'Running Coach',
      description: 'Seeking a running coach to improve my endurance and speed.',
      price: 120_000.0,
      category: Category.third,
      user: User.third,
      location: 'Berawa'
    },
    {
      name: 'Help with Heavy Lifting',
      description: 'Looking for strong individuals to assist with heavy lifting during a move.',
      price: 95_000.0,
      category: Category.second,
      user: User.fourth,
      location: 'Kuta'
    },
    {
      name: 'English Language Tutor',
      description: 'Seeking an English language tutor to improve my speaking and writing skills.',
      price: 120_000.00,
      category: Category.first,
      user: User.fifth,
      location: 'Uluwatu'
    },
    {
      name: 'Manicure and Pedicure Services',
      description: 'In need of a skilled nail technician for a manicure and pedicure session. ',
      price: 50_000.0,
      category: Category.fifth,
      user: User.first,
      location: 'Denpasar'
    },
    {
      name: 'Fixing a Broken Shelf',
      description: 'Need someone with carpentry skills to fix a broken shelf in my living room.',
      price: 90_000.0,
      category: Category.fourth,
      user: User.second,
      location: 'Ubud'
    },
    {
      name: 'Yoga Instructor for Private Sessions',
      description: 'Searching for a certified yoga instructor for private yoga sessions.',
      price: 170_000.0,
      category: Category.third,
      user: User.third,
      location: 'Berawa'
    },
    {
      name: 'Packing and Unpacking Assistance',
      description: 'Looking for helpers to assist with packing and unpacking belongings during a move.',
      price: 45_000.00,
      category: Category.second,
      user: User.fourth,
      location: 'Kuta'
    },
    {
      name: 'Science Tutor for Middle School Student',
      description: 'Seeking a science tutor to help my middle school student with biology.',
      price: 85_000.00,
      category: Category.first,
      user: User.fifth,
      location: 'Uluwatu'
    },
    {
      name: 'Haircut and Styling for Men',
      description: 'Need a skilled hairstylist for a haircut and styling session for men.',
      price: 75_000.0,
      category: Category.fifth,
      user: User.first,
      location: 'Denpasar'
    },
    {
      name: 'Installing Shelves in a Closet',
      description: 'Looking for a handyman to install shelves in a closet for better organization.',
      price: 70_000.0,
      category: Category.fourth,
      user: User.second,
      location: 'Ubud'
    },
    {
      name: 'Personal Swimming Instructor',
      description: 'Seeking a personal swimming instructor to improve my swimming technique.',
      price: 85_000.0,
      category: Category.third,
      user: User.third,
      location: 'Berawa'
    },
    {
      name: 'Furniture Disposal and Recycling',
      description: 'Need assistance with disposing and recycling old furniture during a move.',
      price: 40_000.0,
      category: Category.second,
      user: User.fourth,
      location: 'Kuta'
    },
    {
      name: 'History Tutor for College Student',
      description: 'Searching for a history tutor to help me with my college-level history course.',
      price: 30_000.00,
      category: Category.first,
      user: User.fifth,
      location: 'Uluwatu'
    },
    {
      name: 'SAT Exam Prep Tutor',
      description: 'Seeking an experienced tutor to help me prepare for the SAT exam.',
      price: 140_000.00,
      category: Category.first,
      user: User.first,
      location: 'Denpasar'
    },
    {
      name: 'Professional Makeup Application',
      description: 'Looking for a makeup artist to do a professional makeup application for a special occasion.',
      price: 110_000.0,
      category: Category.fifth,
      user: User.second,
      location: 'Ubud'
    },
    {
      name: 'Assembling a Bookshelf',
      description: 'Need help with assembling a bookshelf and ensuring it is stable.',
      price: 45_000.0,
      category: Category.fourth,
      user: User.third,
      location: 'Berawa'
    },
    {
      name: 'Tennis Coach for Beginners',
      description: 'Searching for a tennis coach to teach me the basics of playing tennis.',
      price: 90_000.0,
      category: Category.third,
      user: User.fourth,
      location: 'Kuta'
    },
    {
      name: 'Packing Supplies and Materials Delivery',
      description: 'Looking for someone to deliver packing supplies and materials for an upcoming move.',
      price: 25_000.00,
      category: Category.second,
      user: User.fifth,
      location: 'Uluwatu'
    },
    {
      name: 'Online Math Tutoring for Elementary Student',
      description: 'Seeking an online math tutor to help my elementary school student with arithmetic.',
      price: 50_000.00,
      category: Category.first,
      user: User.first,
      location: 'Denpasar'
    },
    {
      name: 'Bridal Hair and Makeup Services',
      description: 'Looking for a professional hairstylist and makeup artist for bridal hair and makeup services.',
      price: 150_000.0,
      category: Category.fifth,
      user: User.second,
      location: 'Ubud'
    },
    {
      name: 'Repairing a Leaky Roof',
      description: 'Need a skilled handyman to repair a leaky roof in my house.',
      price: 170_000.0,
      category: Category.fourth,
      user: User.third,
      location: 'Berawa'
    },
    {
      name: 'Personal Basketball Trainer',
      description: 'Searching for a personal basketball trainer to improve my basketball skills.',
      price: 95_000.0,
      category: Category.third,
      user: User.fourth,
      location: 'Kuta'
    },
    {
      name: 'Loading and Unloading Truck',
      description: 'Looking for individuals to help with loading and unloading items onto a moving truck.',
      price: 75_000.00,
      category: Category.second,
      user: User.fifth,
      location: 'Uluwatu'
    }
  ]
)

task_count = Task.count
puts "#{task_count} #{task_count == 1 ? 'task' : 'tasks'} got created!"
