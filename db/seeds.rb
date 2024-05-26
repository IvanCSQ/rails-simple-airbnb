# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

flat_1 = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

flat_2 = {
  name: 'Modern Garden Apartment in Central London',
  address: '15 Belsize Park Gardens London NW3 4LD',
  description: 'A sleek and modern garden apartment featuring two double bedrooms, an open plan living area, a fully equipped kitchen, and a charming garden patio',
  price_per_night: 85,
  number_of_guests: 4
}

flat_3 = {
  name: 'Charming Garden Flat Near Hyde Park',
  address: '22 Lancaster Gate London W2 3LH',
  description: 'This delightful garden flat is just a short walk from Hyde Park. It offers two double bedrooms, a spacious living room, a modern kitchen, and a lovely private garden',
  price_per_night: 95,
  number_of_guests: 4
}

flat_4 = {
  name: 'Cozy Garden Retreat in Notting Hill',
  address: '8 Portobello Road London W11 3DL',
  description: 'A cozy and inviting garden flat located in the heart of Notting Hill. It features one double bedroom, a comfortable living area, a stylish kitchen, and a serene garden space',
  price_per_night: 70,
  number_of_guests: 2
}

flats_arr = [flat_1, flat_2, flat_3, flat_4]

flats_arr.each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
