# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


puts "Deleting all tasks"
Task.destroy_all


puts "Creating 25 tasks"
25.times do
  task = Task.create(name: Faker::Hacker.ingverb, description:
Faker::Hacker.say_something_smart)
  puts "Created #{task.name}"
end

puts "Bye!"
