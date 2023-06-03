# Create categories

puts "Creating categories..."

Category.create([
                  {
                    name: 'Education',
                    description: 'Test description for the education category'
                  },
                  {
                    name: 'Moving',
                    description: 'Test description for the moving category'
                  },
                  {
                    name: 'Sports',
                    description: 'Test description for the sports category'
                  },
                  {
                    name: 'Handyman',
                    description: 'Test description for the handyman category'
                  },
                  {
                    name: 'Beauty',
                    description: 'Test description for the beauty category'
                  },
                  {
                    name: 'PetCare',
                    description: 'Test description for the pet care category'
                  },
                  {
                    name: 'Babysitting',
                    description: 'Test description for the babysitting category'
                  },
                  {
                    name: 'Cooking',
                    description: 'Test description for the cooking category'
                  },
                  {
                    name: 'Organizing',
                    description: 'Test description for the organizing category'
                  },
                  {
                    name: 'Cleaning',
                    description: 'Test description for the cleaning category'
                  },
                  {
                    name: 'Events',
                    description: 'Test description for the events category'
                  }
                ])

category_count = Category.count
puts "#{category_count} #{category_count == 1 ? 'category' : 'categories'} got created!"
