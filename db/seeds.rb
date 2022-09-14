cat = %w[chinese italian japanese french belgian]

Restaurant.destroy_all

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: cat.sample
  )
end
