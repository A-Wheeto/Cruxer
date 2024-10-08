# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "csv"

csv_text = File.read(Rails.root.join("lib", "seeds", "climbing_locations.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
    l = Location.new
    l.name = row["Name"]
    l.address = row["Address"]
    l.phone = row["Phone"]
    l.website = row["Website"]
    l.email = row["Email"]
    l.save
    puts "#{l.name} saved"
end

puts "Number of locations: #{Location.count}"