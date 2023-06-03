# Create tasks

puts "Creating tasks..."

Task.create(
  [
    {
      name: 'Task 1',
      description: 'Description 1',
      price: 10.0,
      category: Category.fifth,
      user: User.first
    },
    {
      name: 'Task 2',
      description: 'Description 2',
      price: 20.0,
      category: Category.fourth,
      user: User.second
    },
    {
      name: 'Task 3',
      description: 'Description 3',
      price: 20.0,
      category: Category.third,
      user: User.second
    },
    {
      name: 'Task 4',
      description: 'Description 4',
      price: 24.99,
      category: Category.second,
      user: User.first
    },
    {
      name: 'Task 5',
      description: 'Description 5',
      price: 35.49,
      category: Category.first,
      user: User.second
    },
    {
      name: 'Task 6',
      description: 'Description 6',
      price: 22.0,
      category: Category.fifth,
      user: User.first
    },
    {
      name: 'Task 7',
      description: 'Description 7',
      price: 15.49,
      category: Category.fourth,
      user: User.first
    },
    {
      name: 'Task 8',
      description: 'Description 8',
      price: 12.0,
      category: Category.third,
      user: User.first
    },
    {
      name: 'Task 9',
      description: 'Description 9',
      price: 45.0,
      category: Category.second,
      user: User.second
    },
    {
      name: 'Task 10',
      description: 'Description 10',
      price: 32.49,
      category: Category.first,
      user: User.second
    },
    {
      name: 'Task 11',
      description: 'Description 11',
      price: 18.0,
      category: Category.fifth,
      user: User.first
    },
    {
      name: 'Task 12',
      description: 'Description 12',
      price: 8.0,
      category: Category.fourth,
      user: User.second
    },
    {
      name: 'Task 13',
      description: 'Description 13',
      price: 14.0,
      category: Category.third,
      user: User.first
    },
    {
      name: 'Task 14',
      description: 'Description 14',
      price: 17.99,
      category: Category.second,
      user: User.second
    },
    {
      name: 'Task 15',
      description: 'Description 15',
      price: 12.35,
      category: Category.first,
      user: User.second
    },
    {
      name: 'Task 16',
      description: 'Description 16',
      price: 24.0,
      category: Category.fifth,
      user: User.second
    },
    {
      name: 'Task 17',
      description: 'Description 17',
      price: 20.0,
      category: Category.fourth,
      user: User.second
    },
    {
      name: 'Task 18',
      description: 'Description 18',
      price: 15.0,
      category: Category.third,
      user: User.second
    },
    {
      name: 'Task 19',
      description: 'Description 19',
      price: 42.25,
      category: Category.second,
      user: User.second
    },
    {
      name: 'Task 20',
      description: 'Description 20',
      price: 16.49,
      category: Category.first,
      user: User.second
    }
  ]
)

task_count = Task.count
puts "#{task_count} #{task_count == 1 ? 'task' : 'tasks'} got created!"
