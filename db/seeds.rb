puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

20.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, rating: rand(1..5))
  puts "Created #{restaurant.name}"
end

puts "Finished! Created #{Restaurant.count} restaurants!"
