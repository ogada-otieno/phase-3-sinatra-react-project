# require 'faker'

puts "🌱 Seeding tables..."

# Seed your database here

10.times do
    # create projects with random data
    project = Project.create(
        title: Faker::Lorem.sentence(5),
        description: Faker::Lorem.paragraph,
        image_url: Faker::LoremFlickr.image

    )

    user = User.create(
        email: Faker::Internet.email,
        speciality: Faker::Lorem.word,
        avatar_url: Faker::LoremFlickr.image,
        experience: Faker::Lorem.paragraph,
        interests: Faker::Lorem.sentence(5),
        hobies: Faker::Lorem.sentence(5),
        date_of_birth: Faker::Date.birthday(min_age: 15, max_age: 65),
        locale: Faker::Address.country,
        address: Faker::Address.full_address,
        education: Faker::Educator.degree
    )

    # create between 1 and 10 skills for each user
    rand(1..10).times do
        skill = Skill.create(
        skill: Faker::Job.key_skill
    )
    end

    credential = Credential.create(
        password: Faker::Internet.password,
        username: Faker::Internet.username(specifier: 5)
    )
end

puts "✅ Done seeding!"
