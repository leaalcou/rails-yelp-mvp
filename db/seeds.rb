# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts 'Creating restaurants...'
Restaurant.create!(name: 'Come Prima', address: '96 rue Gaudot Moroy', phone_number: '0162616232', category: 'italian')
puts 'Created Come Prima'
Restaurant.create!(name: 'Dong Huong', address: '15 avenue Belleville', phone_number: '012334556', category: 'chinese')
puts 'Created Dong Huong'

# 3. Display a message 🎉
puts 'Finished! Created #{Restaurant.count} restaurants.'
