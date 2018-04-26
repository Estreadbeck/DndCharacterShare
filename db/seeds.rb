# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    email: "test@test.com",
    password: "qwerty",
    password_confirmation: "qwerty",
    name: "Regular User"
)
puts "1 regular user created"


3.times do |character_class|
  CharacterClass.create!(
    title: "Sample Class #{character_class}",
    description: 'This is a sample class'
    )
end
puts "created 3 classes"

4.times do |race|
  Race.create!(
    race_name: "Sample Race #{race}",
    race_description: "A sample character race"
    )
end
puts 'created 4 races'

5.times do |character|
  Character.create!(
    name: "Character #{character}",
    race_id: Race.first.id,
    level: 1,
    character_image: "http://via.placeholder.com/350x350",
    backstory: "my sob story",
    character_class_id: CharacterClass.last.id,
    user_id: User.last.id
    )
end
puts "created 5 characters"


