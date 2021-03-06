# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
stat_name_arr = %w(Strength Dexterity Constitution Intelligence Wisdom Charisma)

2.times do |user|
    User.create!(
        email: "test#{user}@test.com",
        password: "qwerty",
        password_confirmation: "qwerty",
        name: "Regular User #{user}"
    )
end
puts "2 regular users created"

User.create!(
    email: "admin@test.com",
    password: "ytrewq",
    password_confirmation: "ytrewq",
    name: 'Admin User',
    roles: 'site_admin'
    )
puts "1 admin user created"

3.times do |character_class|
  CharacterClass.create!(
    title: "Sample Class #{character_class}",
    description: 'This is a sample class',
    features_attributes: [{name: 'Sample Feature 1', description: 'This is a sample feature for testing purposes', level: 1}, {name: 'Sample Feature 2', description: 'This is a sample feature for testing purposes', level: 2}, {name: 'Sample Feature 3', description: 'This is a sample feature for testing purposes', level: 3}, {name: 'Sample Feature 4', description: 'This is a sample feature for testing purposes', level: 4}, {name: 'Sample Feature 5', description: 'This is a sample feature for testing purposes', level: 5}, {name: 'Sample Feature 6', description: 'This is a sample feature for testing purposes', level: 6}, {name: 'Sample Feature 7', description: 'This is a sample feature for testing purposes', level: 7}, {name: 'Sample Feature 8', description: 'This is a sample feature for testing purposes', level: 8}, {name: 'Sample Feature 9', description: 'This is a sample feature for testing purposes', level: 9}, {name: 'Sample Feature 10', description: 'This is a sample feature for testing purposes', level: 10}]
    )
end
puts "created 3 classes"

4.times do |race|
  Race.create!(
    race_name: "Sample Race #{race}",
    race_description: "A sample character race",
    traits_attributes: [{name: 'Sample Trait 1', description: 'This is a sample trait for testing purposes'}, {name: 'Sample Trait 2', description: 'This is a sample trait for testing purposes'}, {name: 'Sample Trait 3', description: 'This is a sample trait for testing purposes'}]
    )
end
puts 'created 4 races'


20.times do |character|
  Character.create!(
    name: "Character #{character}",
    race_id: Race.first.id,
    level: 1,
    status: 1,
    character_image: "http://via.placeholder.com/350x350",
    backstory: "my sob story",
    character_class_id: CharacterClass.last.id,
    initiative: '+2',
    armor_class: '13',
    speed: 30,
    user_id: User.last.id,
    stats_attributes: [ {name: 'Strength', score: 15, modifier: '+2'}, {name: 'Dexterity', score: 15, modifier: '+2'}, {name: 'Constitution', score: 15, modifier: '+2'}, {name: 'Intelligence', score: 15, modifier: '+2'}, {name: 'Wisdom', score: 15, modifier: '+2'}, {name: 'Charisma', score: 15, modifier: '+2'}]
    )
end
puts "created 20 characters for user 1"

20.times do |character|
  Character.create!(
    name: "Character #{character + 20}",
    race_id: Race.last.id,
    level: 1,
    status: 1,
    character_image: "http://via.placeholder.com/350x350",
    backstory: "my sob story",
    character_class_id: CharacterClass.first.id,
    initiative: '+2',
    armor_class: '13',
    speed: 30,
    user_id: User.first.id,
    stats_attributes: [ {name: 'Strength', score: 15, modifier: '+2'}, {name: 'Dexterity', score: 15, modifier: '+2'}, {name: 'Constitution', score: 15, modifier: '+2'}, {name: 'Intelligence', score: 15, modifier: '+2'}, {name: 'Wisdom', score: 15, modifier: '+2'}, {name: 'Charisma', score: 15, modifier: '+2'}]
    )
end
puts "created 20 characters user 2"





