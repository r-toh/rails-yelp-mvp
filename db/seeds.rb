puts "destroying just in case...."
Restaurant.destroy_all

puts "creating restaurants.."
5.times do
  category = %w(chinese italian japanese french belgian)
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category.sample
  )
  restaurant.save
end
puts "done!"
