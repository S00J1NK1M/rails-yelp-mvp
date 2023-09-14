# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
sushi_princess = {name: "Sushi Princess",
  address: "sushistr. 1",
  phone_number: "01234567",
  category: "japanese"}

pasta_prince = {name: "Pasta Prince",
  address: "pastastr. 2",
  phone_number: "0987654",
  category: "italian"}

noodle_king = {name: "Noodle King",
  address: "noodlestr. 1",
  phone_number: "013579",
  category: "chinese"}

cafe_morning = {name: "Cafe Morning",
  address: "morningstr. 1",
  phone_number: "02468",
  category: "french"}

waffleholic = {name: "Waffleholic",
  address: "wafflestr. 1",
  phone_number: "0153425",
  category: "belgian"}

[sushi_princess, pasta_prince, noodle_king, cafe_morning, waffleholic].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
