# Create tasks

puts "Creating tasks..."

Task.create([
  {
    name: 'Task 1',
    description: 'Description 1',
    price: 10.0,
    category: Category.first,
    user: User.first
  },
  {
    name: 'Task 2',
    description: 'Description 2',
    price: 20.0,
    category: Category.second,
    user: User.second
  },
  {
    name: 'Task 3',
    description: 'Description 3',
    price: 20.0,
    category: Category.last,
    user: User.second
  },
  {
    name: 'Task 4',
    description: 'Description 4',
    price: 20.0,
    category: Category.first,
    user: User.first
  },
  {
    name: 'Task 5',
    description: 'Description 5',
    price: 20.0,
    category: Category.first,
    user: User.second
  },
  {
    name: 'Task 6',
    description: 'Description 6',
    price: 20.0,
    category: Category.second,
    user: User.first
  },
  {
    name: 'Task 7',
    description: 'Description 7',
    price: 20.0,
    category: Category.second,
    user: User.first
  },
  {
    name: 'Task 8',
    description: 'Description 8',
    price: 20.0,
    category: Category.first,
    user: User.first
  },
  {
    name: 'Task 9',
    description: 'Description 9',
    price: 20.0,
    category: Category.second,
    user: User.second
  },
  {
    name: 'Task 10',
    description: 'Description 10',
    price: 20.0,
    category: Category.second,
    user: User.second
  },
  {
    name: 'Task 11',
    description: 'Description 11',
    price: 20.0,
    category: Category.second,
    user: User.first
  },
  {
    name: 'Task 12',
    description: 'Description 12',
    price: 20.0,
    category: Category.second,
    user: User.second
  },
  {
    name: 'Task 13',
    description: 'Description 13',
    price: 20.0,
    category: Category.second,
    user: User.first
  },
  {
    name: 'Task 14',
    description: 'Description 14',
    price: 20.0,
    category: Category.second,
    user: User.second
  },
  {
    name: 'Task 15',
    description: 'Description 15',
    price: 20.0,
    category: Category.second,
    user: User.second
  },
  {
    name: 'Task 16',
    description: 'Description 16',
    price: 20.0,
    category: Category.second,
    user: User.second
  },
  {
    name: 'Task 17',
    description: 'Description 17',
    price: 20.0,
    category: Category.second,
    user: User.second
  },
  {
    name: 'Task 18',
    description: 'Description 18',
    price: 20.0,
    category: Category.second,
    user: User.second
  },
  {
    name: 'Task 19',
    description: 'Description 19',
    price: 20.0,
    category: Category.first,
    user: User.second
  },
  {
    name: 'Task 20',
    description: 'Description 20',
    price: 20.0,
    category: Category.second,
    user: User.second
  },
])
puts "#{Task.count} tasks got created!"
