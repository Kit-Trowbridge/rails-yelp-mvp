require 'faker'

category = %w[chinese italian japanese french belgian]

# puts 'Cleaning database...'
# Restaurant.destroy_all

puts 'Creating restaurants...'

10.times do
  Restaurant.create(
    name: "The #{Faker::Creature::Horse.name} #{Faker::Creature::Animal.name.capitalize}",
    address: Faker::Address.city,
    category: category.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  # this interpolation isn't working
  puts "Created #{Restaurant.name}"
end

puts "Finished! Created #{Restaurant.count} restaurants"
