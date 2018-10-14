user1 = User.create! nick_name: Faker::Name.middle_name,
                      email: "a@a.a",
                      picture: Faker::Avatar.image,
                      password: "asdasd"

9.times do |n|
  game = Game.create! name: Faker::Esport.game,
                details: Faker::Movie.quote,
                price: Faker::Number.decimal(2, 2),
                picture: Rails.root.join("app/assets/images/slide-#{n%5+1}.jpg").open

  game.genres.create! genre: ["Action", "Fantasy"][rand(0..1)]

  game.reviews.create! user_id: user1.id,
                content: Faker::Lorem.sentence(5),
                score: Faker::Number.between(1, 10)
  game.reviews.create! user_id: user1.id,
                content: Faker::Lorem.sentence(5),
                score: Faker::Number.between(1, 10)
  game.reviews.create! user_id: user1.id,
                content: Faker::Lorem.sentence(5),
                score: Faker::Number.between(1, 10)

  game.screenshots.create! picture: Rails.root.join("app/assets/images/new-#{n%10+1}.jpg").open
  game.screenshots.create! picture: Rails.root.join("app/assets/images/popular-#{n%10+1}.jpg").open
end
