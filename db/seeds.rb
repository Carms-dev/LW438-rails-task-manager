# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'seeding'

Task.create!(title: 'sample 1', details: 'details 1')
Task.create!(title: 'sample 2', details: 'details 2')
Task.create!(title: 'sample 3', details: 'details 3')
Task.create!(title: 'sample 4', details: 'details 4')
Task.create!(title: 'sample 5', details: 'details 5')

p 'done seeding'