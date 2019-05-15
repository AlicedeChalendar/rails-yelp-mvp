# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Taverne de Zhao',
    address:      'Paris 10',
    category:     'chinese'
  },
  {
    name:         'Big Mamma',
    address:      'Paris 9',
    category:     'italian'
  },
  {
    name:         'le 52',
    address:      'Paris 10',
    category:     'french'
  },
  {
    name:         'Matsuri',
    address:      'Paris 16',
    category:     'japanese'
  },
  {
    name:         'Chez Graf',
    address:      'Paris 7',
    category:     'french'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
