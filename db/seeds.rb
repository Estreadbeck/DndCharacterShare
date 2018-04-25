# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |character_class|
  CharacterClass.create!(
    title: "Sample Class #{character_class}",
    description: 'this is a sample class'
    )
end
puts "created 3 classes"

5.times do |character|
  Character.create!(
    name: "Character #{character}",
    race: "Human",
    level: 1,
    character_image: "http://via.placeholder.com/350x350",
    backstory: "my sob story",
    character_class_id: CharacterClass.last.id
    )
end
puts "created 5 characters"


