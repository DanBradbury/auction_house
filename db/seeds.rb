# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
["West", "Central", "East"].each do |world|
  World.create(name: world)
end

Item.create(name: "Axe", image: "axe0.png", price: 10)
Item.create(name: "Bracelet", image: "bracelet.png", price: 5)
Item.create(name: "Healing Leaf", image: "leaf.png", price: 5)

