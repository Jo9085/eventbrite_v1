User.destroy_all

10.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, description: Faker::Lorem.sentence(word_count: 10), email: Faker::Internet.email(domain: 'yopmail.com'), encrypted_password: Faker::Internet.password)
end