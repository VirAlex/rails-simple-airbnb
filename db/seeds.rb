puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating Flats...'

20.times do
Flat.create(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    description: Faker::House.furniture,
    price_per_night: rand(40..800),
    number_of_guests: rand(1..12),
  )
end
puts 'Finished!'