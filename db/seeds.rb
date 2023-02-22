Event.destroy_all



10.times do
    Event.create(start_date: Faker::Time.forward(days: rand(1..15), period: :all), duration: rand(3..24) * 5, title: Faker::Lorem.sentence(word_count: 1, random_words_to_add: 2).chop, description: Faker::Lorem.paragraph(sentence_count: 2, random_sentences_to_add: 2), price: rand(5..200), location: Faker::Address.city, user: User.all.sample)
  end