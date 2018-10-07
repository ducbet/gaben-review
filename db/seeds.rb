user1 = User.create! nick_name: Faker::Name.middle_name,
                      email: "a@a.a",
                      picture: Faker::Avatar.image

20.times do
  game = Game.create! name: Faker::Esport.game,
                details: Faker::Movie.quote,
                price: Faker::Number.decimal(2, 2),
                picture: Faker::Avatar.image

  game.genres.create! genre: 0
  game.genres.create! genre: 1

  game.reviews.create! user_id: user1.id,
                content: Faker::Lorem.sentence(5),
                score: Faker::Number.between(1, 10)
  game.reviews.create! user_id: user1.id,
                content: Faker::Lorem.sentence(5),
                score: Faker::Number.between(1, 10)
  game.reviews.create! user_id: user1.id,
                content: Faker::Lorem.sentence(5),
                score: Faker::Number.between(1, 10)

  game.screenshots.create! picture: Faker::Avatar.image
  game.screenshots.create! picture: Faker::Avatar.image
  game.screenshots.create! picture: Faker::Avatar.image
end
