user1 = User.create! nick_name: "Admin " + Faker::Name.middle_name,
email: "a@a.a",
picture: Rails.root.join("app/assets/images/default_avatar.jpg").open,
password: "asdasd",
user_type: 1

user2 = User.create! nick_name: "Maker Konami",
email: "b@b.b",
picture: Rails.root.join("app/assets/images/fly_avatar.jpg").open,
password: "asdasd",
user_type: 2

user3 = User.create! nick_name: "Maker EA",
email: "c@c.c",
picture: Rails.root.join("app/assets/images/fly_avatar.jpg").open,
password: "asdasd",
user_type: 2

User.create! nick_name: "User " + Faker::Name.middle_name,
email: "e@e.e",
picture: Rails.root.join("app/assets/images/fly_avatar.jpg").open,
password: "asdasd",
user_type: 0

genres = ["Action","Adventure", "Casual", "Indie", "Racing", "RPG", "Simulation", "Sports", "Strategy"]
genres.each do |genre|
  Genre.create! genre: genre
end

game = Game.create! name: "Surviv",
details: "Nếu các bạn đã chơi những trò chơi sinh tồn kiểu PUBG, Fortnite hay H1Z1, thì bạn đã nắm được một nửa trò chơi rồi! Hãy coi trò surviv.io như là trò PUBG 2D.",
price: 0,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/surviv.png").open,
user_id: user3.id

game.game_genres.create! genre_id: rand(1..(genres.size))

game.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game.screenshots.create! picture: Rails.root.join("app/assets/images/surviv1.png").open
game.screenshots.create! picture: Rails.root.join("app/assets/images/surviv2.png").open
game.screenshots.create! picture: Rails.root.join("app/assets/images/surviv3.png").open

game.trailers.create! youtube_link: "https://www.youtube.com/watch?v=9JqXI9DOsuE"
game.trailers.create! youtube_link: "https://www.youtube.com/watch?v=wOU9J-O_oEo"

game1 = Game.create! name: "Age of empires",
details: "Age of empires detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/age-of-empires-1.jpg").open

game1.game_genres.create! genre_id: rand(1..(genres.size))
game1.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game1.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game1.screenshots.create! picture: Rails.root.join("app/assets/images/age-of-empires-1.jpg").open
game1.screenshots.create! picture: Rails.root.join("app/assets/images/age-of-empires-2.jpg").open
game1.screenshots.create! picture: Rails.root.join("app/assets/images/age-of-empires-3.jpg").open

game2 = Game.create! name: "Angry bird",
details: "Angry bird detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/angry-bird-1.jpg").open

game2.game_genres.create! genre_id: rand(1..(genres.size))
game2.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game2.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game2.screenshots.create! picture: Rails.root.join("app/assets/images/angry-bird-1.jpg").open
game2.screenshots.create! picture: Rails.root.join("app/assets/images/angry-bird-2.jpg").open
game2.screenshots.create! picture: Rails.root.join("app/assets/images/angry-bird-3.jpg").open
game2.screenshots.create! picture: Rails.root.join("app/assets/images/angry-bird-4.jpg").open

game3 = Game.create! name: "Battlefield",
details: "Battlefield detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/battlefield-1.jpg").open

game3.game_genres.create! genre_id: rand(1..(genres.size))
game3.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game3.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game3.screenshots.create! picture: Rails.root.join("app/assets/images/battlefield-1.jpg").open
game3.screenshots.create! picture: Rails.root.join("app/assets/images/battlefield-2.jpg").open
game3.screenshots.create! picture: Rails.root.join("app/assets/images/battlefield-3.jpg").open
game3.screenshots.create! picture: Rails.root.join("app/assets/images/battlefield-4.jpg").open
game3.screenshots.create! picture: Rails.root.join("app/assets/images/battlefield-5.jpg").open

game4 = Game.create! name: "Call of duty",
details: "Call of duty detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/call-of-duty-1.jpg").open

game4.game_genres.create! genre_id: rand(1..(genres.size))
game4.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game4.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game4.screenshots.create! picture: Rails.root.join("app/assets/images/call-of-duty-1.jpg").open
game4.screenshots.create! picture: Rails.root.join("app/assets/images/call-of-duty-2.jpg").open
game4.screenshots.create! picture: Rails.root.join("app/assets/images/call-of-duty-3.jpg").open
game4.screenshots.create! picture: Rails.root.join("app/assets/images/call-of-duty-4.jpg").open
game4.screenshots.create! picture: Rails.root.join("app/assets/images/call-of-duty-5.jpg").open

game5 = Game.create! name: "Crysis",
details: "Crysis detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/crysis-1.jpg").open

game5.game_genres.create! genre_id: rand(1..(genres.size))
game5.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game5.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game5.screenshots.create! picture: Rails.root.join("app/assets/images/crysis-1.jpg").open
game5.screenshots.create! picture: Rails.root.join("app/assets/images/crysis-2.jpg").open
game5.screenshots.create! picture: Rails.root.join("app/assets/images/crysis-3.jpg").open
game5.screenshots.create! picture: Rails.root.join("app/assets/images/crysis-4.jpg").open
game5.screenshots.create! picture: Rails.root.join("app/assets/images/crysis-5.jpg").open

game6 = Game.create! name: "Dark siders",
details: "Dark siders detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/dark-siders-1.jpg").open

game6.game_genres.create! genre_id: rand(1..(genres.size))
game6.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game6.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game6.screenshots.create! picture: Rails.root.join("app/assets/images/dark-siders-1.jpg").open
game6.screenshots.create! picture: Rails.root.join("app/assets/images/dark-siders-2.jpg").open
game6.screenshots.create! picture: Rails.root.join("app/assets/images/dark-siders-3.jpg").open
game6.screenshots.create! picture: Rails.root.join("app/assets/images/dark-siders-4.jpg").open
game6.screenshots.create! picture: Rails.root.join("app/assets/images/dark-siders-5.jpg").open

game7 = Game.create! name: "Dead space",
details: "Dead space detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/dead-space-1.jpg").open

game7.game_genres.create! genre_id: rand(1..(genres.size))
game7.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game7.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game7.screenshots.create! picture: Rails.root.join("app/assets/images/dead-space-1.jpg").open
game7.screenshots.create! picture: Rails.root.join("app/assets/images/dead-space-2.jpg").open
game7.screenshots.create! picture: Rails.root.join("app/assets/images/dead-space-3.jpg").open
game7.screenshots.create! picture: Rails.root.join("app/assets/images/dead-space-4.jpg").open
game7.screenshots.create! picture: Rails.root.join("app/assets/images/dead-space-5.jpg").open
game7.screenshots.create! picture: Rails.root.join("app/assets/images/dead-space-6.jpg").open

game8 = Game.create! name: "Destiny",
details: "Destiny detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/destiny-1.jpg").open

game8.game_genres.create! genre_id: rand(1..(genres.size))
game8.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game8.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game8.screenshots.create! picture: Rails.root.join("app/assets/images/destiny-1.jpg").open
game8.screenshots.create! picture: Rails.root.join("app/assets/images/destiny-2.jpg").open
game8.screenshots.create! picture: Rails.root.join("app/assets/images/destiny-3.jpg").open
game8.screenshots.create! picture: Rails.root.join("app/assets/images/destiny-4.jpg").open
game8.screenshots.create! picture: Rails.root.join("app/assets/images/destiny-5.jpg").open
game8.screenshots.create! picture: Rails.root.join("app/assets/images/destiny-6.jpg").open

game9 = Game.create! name: "Devil may cry",
details: "Devil may cry detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/devil-may-cry-1.jpg").open

game9.game_genres.create! genre_id: rand(1..(genres.size))
game9.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game9.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game9.screenshots.create! picture: Rails.root.join("app/assets/images/devil-may-cry-1.jpg").open
game9.screenshots.create! picture: Rails.root.join("app/assets/images/devil-may-cry-2.jpg").open
game9.screenshots.create! picture: Rails.root.join("app/assets/images/devil-may-cry-3.jpg").open
game9.screenshots.create! picture: Rails.root.join("app/assets/images/devil-may-cry-4.jpg").open
game9.screenshots.create! picture: Rails.root.join("app/assets/images/devil-may-cry-5.jpg").open

game11 = Game.create! name: "Dota 2",
details: "Dota 2 detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/dota2-1.jpg").open

game11.game_genres.create! genre_id: rand(1..(genres.size))
game11.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game11.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game11.screenshots.create! picture: Rails.root.join("app/assets/images/dota2-1.jpg").open
game11.screenshots.create! picture: Rails.root.join("app/assets/images/dota2-2.jpg").open
game11.screenshots.create! picture: Rails.root.join("app/assets/images/dota2-3.jpg").open
game11.screenshots.create! picture: Rails.root.join("app/assets/images/dota2-4.jpg").open
game11.screenshots.create! picture: Rails.root.join("app/assets/images/dota2-5.jpg").open

game12 = Game.create! name: "Fallout",
details: "Fallout detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/fallout-1.jpg").open

game12.game_genres.create! genre_id: rand(1..(genres.size))
game12.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game12.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game12.screenshots.create! picture: Rails.root.join("app/assets/images/fallout-1.jpg").open
game12.screenshots.create! picture: Rails.root.join("app/assets/images/fallout-2.jpg").open
game12.screenshots.create! picture: Rails.root.join("app/assets/images/fallout-3.jpg").open
game12.screenshots.create! picture: Rails.root.join("app/assets/images/fallout-4.jpg").open
game12.screenshots.create! picture: Rails.root.join("app/assets/images/fallout-5.jpg").open
game12.screenshots.create! picture: Rails.root.join("app/assets/images/fallout-6.jpg").open

game13 = Game.create! name: "Farcry",
details: "Farcry detail",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/farcry-1.jpg").open

game13.game_genres.create! genre_id: rand(1..(genres.size))
game13.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game13.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game13.screenshots.create! picture: Rails.root.join("app/assets/images/farcry-1.jpg").open
game13.screenshots.create! picture: Rails.root.join("app/assets/images/farcry-2.jpg").open
game13.screenshots.create! picture: Rails.root.join("app/assets/images/farcry-3.jpg").open
game13.screenshots.create! picture: Rails.root.join("app/assets/images/farcry-4.jpg").open
game13.screenshots.create! picture: Rails.root.join("app/assets/images/farcry-5.jpg").open

game14 = Game.create! name: "Final fantasy",
details: "Final fantasy",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/final-fantasy-1.jpg").open

game14.game_genres.create! genre_id: rand(1..(genres.size))
game14.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game14.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game14.screenshots.create! picture: Rails.root.join("app/assets/images/final-fantasy-1.jpg").open
game14.screenshots.create! picture: Rails.root.join("app/assets/images/final-fantasy-2.jpg").open
game14.screenshots.create! picture: Rails.root.join("app/assets/images/final-fantasy-3.jpg").open
game14.screenshots.create! picture: Rails.root.join("app/assets/images/final-fantasy-4.jpg").open
game14.screenshots.create! picture: Rails.root.join("app/assets/images/final-fantasy-5.jpg").open

game15 = Game.create! name: "Forza",
details: "Forza",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/forza-1.jpg").open

game15.game_genres.create! genre_id: rand(1..(genres.size))
game15.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game15.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game15.screenshots.create! picture: Rails.root.join("app/assets/images/forza-1.jpg").open
game15.screenshots.create! picture: Rails.root.join("app/assets/images/forza-2.jpg").open
game15.screenshots.create! picture: Rails.root.join("app/assets/images/forza-3.jpg").open
game15.screenshots.create! picture: Rails.root.join("app/assets/images/forza-4.jpg").open
game15.screenshots.create! picture: Rails.root.join("app/assets/images/forza-5.jpg").open

game16 = Game.create! name: "Gear of war",
details: "Gear of war",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/gear-of-war-1.jpg").open

game16.game_genres.create! genre_id: rand(1..(genres.size))
game16.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game16.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game16.screenshots.create! picture: Rails.root.join("app/assets/images/gear-of-war-1.jpg").open
game16.screenshots.create! picture: Rails.root.join("app/assets/images/gear-of-war-2.jpg").open
game16.screenshots.create! picture: Rails.root.join("app/assets/images/gear-of-war-3.jpg").open
game16.screenshots.create! picture: Rails.root.join("app/assets/images/gear-of-war-4.jpg").open
game16.screenshots.create! picture: Rails.root.join("app/assets/images/gear-of-war-5.jpg").open

game17 = Game.create! name: "God of war",
details: "God of war",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/god-of-war-1.jpg").open

game17.game_genres.create! genre_id: rand(1..(genres.size))
game17.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game17.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game17.screenshots.create! picture: Rails.root.join("app/assets/images/god-of-war-1.jpg").open
game17.screenshots.create! picture: Rails.root.join("app/assets/images/god-of-war-2.jpg").open
game17.screenshots.create! picture: Rails.root.join("app/assets/images/god-of-war-3.jpg").open
game17.screenshots.create! picture: Rails.root.join("app/assets/images/god-of-war-4.jpg").open
game17.screenshots.create! picture: Rails.root.join("app/assets/images/god-of-war-5.jpg").open

game18 = Game.create! name: "Gran turismo",
details: "Gran turismo",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/gran-turismo-1.jpg").open

game18.game_genres.create! genre_id: rand(1..(genres.size))
game18.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game18.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game18.screenshots.create! picture: Rails.root.join("app/assets/images/gran-turismo-1.jpg").open
game18.screenshots.create! picture: Rails.root.join("app/assets/images/gran-turismo-2.jpg").open
game18.screenshots.create! picture: Rails.root.join("app/assets/images/gran-turismo-3.jpg").open
game18.screenshots.create! picture: Rails.root.join("app/assets/images/gran-turismo-4.jpg").open
game18.screenshots.create! picture: Rails.root.join("app/assets/images/gran-turismo-5.jpg").open

game19 = Game.create! name: "GtaV",
details: "GtaV",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/gtav-1.jpg").open

game19.game_genres.create! genre_id: rand(1..(genres.size))
game19.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game19.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game19.screenshots.create! picture: Rails.root.join("app/assets/images/gtav-1.jpg").open
game19.screenshots.create! picture: Rails.root.join("app/assets/images/gtav-2.jpg").open
game19.screenshots.create! picture: Rails.root.join("app/assets/images/gtav-3.jpg").open
game19.screenshots.create! picture: Rails.root.join("app/assets/images/gtav-4.jpg").open
game19.screenshots.create! picture: Rails.root.join("app/assets/images/gtav-5.jpg").open

game20 = Game.create! name: "Guild war",
details: "Guild war",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/guild-wars-1.jpg").open

game20.game_genres.create! genre_id: rand(1..(genres.size))
game20.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game20.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game20.screenshots.create! picture: Rails.root.join("app/assets/images/guild-wars-1.jpg").open
game20.screenshots.create! picture: Rails.root.join("app/assets/images/guild-wars-2.jpg").open
game20.screenshots.create! picture: Rails.root.join("app/assets/images/guild-wars-3.jpg").open
game20.screenshots.create! picture: Rails.root.join("app/assets/images/guild-wars-4.jpg").open
game20.screenshots.create! picture: Rails.root.join("app/assets/images/guild-wars-5.jpg").open
game20.screenshots.create! picture: Rails.root.join("app/assets/images/guild-wars-6.jpg").open

game21 = Game.create! name: "Hitman",
details: "Hitman",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/hitman-1.jpg").open

game21.game_genres.create! genre_id: rand(1..(genres.size))
game21.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game21.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game21.screenshots.create! picture: Rails.root.join("app/assets/images/hitman-1.jpg").open
game21.screenshots.create! picture: Rails.root.join("app/assets/images/hitman-2.jpg").open
game21.screenshots.create! picture: Rails.root.join("app/assets/images/hitman-3.jpg").open

game22 = Game.create! name: "Killzone",
details: "Killzone",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/killzone-1.jpg").open

game22.game_genres.create! genre_id: rand(1..(genres.size))
game22.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game22.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game22.screenshots.create! picture: Rails.root.join("app/assets/images/killzone-1.jpg").open
game22.screenshots.create! picture: Rails.root.join("app/assets/images/killzone-2.jpg").open
game22.screenshots.create! picture: Rails.root.join("app/assets/images/killzone-3.jpg").open
game22.screenshots.create! picture: Rails.root.join("app/assets/images/killzone-4.jpg").open
game22.screenshots.create! picture: Rails.root.join("app/assets/images/killzone-5.jpg").open

game23 = Game.create! name: "Left 4 Dead",
details: "Left 4 Dead",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/left-4-dead-1.jpg").open

game23.game_genres.create! genre_id: rand(1..(genres.size))
game23.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game23.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game23.screenshots.create! picture: Rails.root.join("app/assets/images/left-4-dead-1.jpg").open
game23.screenshots.create! picture: Rails.root.join("app/assets/images/left-4-dead-2.jpg").open
game23.screenshots.create! picture: Rails.root.join("app/assets/images/left-4-dead-3.jpg").open
game23.screenshots.create! picture: Rails.root.join("app/assets/images/left-4-dead-4.jpg").open

game24 = Game.create! name: "Machinarium",
details: "Machinarium",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/machinarium-1.jpg").open

game24.game_genres.create! genre_id: rand(1..(genres.size))
game24.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game24.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game24.screenshots.create! picture: Rails.root.join("app/assets/images/machinarium-1.jpg").open
game24.screenshots.create! picture: Rails.root.join("app/assets/images/machinarium-2.jpg").open
game24.screenshots.create! picture: Rails.root.join("app/assets/images/machinarium-3.jpg").open
# game24.screenshots.create! picture: Rails.root.join("app/assets/images/machinarium-4.jpg").open
# game24.screenshots.create! picture: Rails.root.join("app/assets/images/machinarium-5.jpg").open

game25 = Game.create! name: "Mario",
details: "Mario",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/mario-1.jpg").open

game25.game_genres.create! genre_id: rand(1..(genres.size))
game25.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game25.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game25.screenshots.create! picture: Rails.root.join("app/assets/images/mario-1.jpg").open
game25.screenshots.create! picture: Rails.root.join("app/assets/images/mario-2.jpg").open
game25.screenshots.create! picture: Rails.root.join("app/assets/images/mario-3.jpg").open

game26 = Game.create! name: "Mass effect",
details: "Mass effect",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/mass-effect-1.jpg").open

game26.game_genres.create! genre_id: rand(1..(genres.size))
game26.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game26.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game26.screenshots.create! picture: Rails.root.join("app/assets/images/mass-effect-1.jpg").open
game26.screenshots.create! picture: Rails.root.join("app/assets/images/mass-effect-2.jpg").open
game26.screenshots.create! picture: Rails.root.join("app/assets/images/mass-effect-3.jpg").open
game26.screenshots.create! picture: Rails.root.join("app/assets/images/mass-effect-4.jpg").open
game26.screenshots.create! picture: Rails.root.join("app/assets/images/mass-effect-5.jpg").open

game27 = Game.create! name: "Medal of honor",
details: "Medal of honor",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/medal-of-honor-1.jpg").open

game27.game_genres.create! genre_id: rand(1..(genres.size))
game27.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game27.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game27.screenshots.create! picture: Rails.root.join("app/assets/images/medal-of-honor-1.jpg").open
game27.screenshots.create! picture: Rails.root.join("app/assets/images/medal-of-honor-2.jpg").open
game27.screenshots.create! picture: Rails.root.join("app/assets/images/medal-of-honor-3.jpg").open
game27.screenshots.create! picture: Rails.root.join("app/assets/images/medal-of-honor-4.jpg").open
game27.screenshots.create! picture: Rails.root.join("app/assets/images/medal-of-honor-5.jpg").open

game28 = Game.create! name: "Metal gear",
details: "Metal gear",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/metal-gear-1.jpg").open

game28.game_genres.create! genre_id: rand(1..(genres.size))
game28.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game28.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game28.screenshots.create! picture: Rails.root.join("app/assets/images/metal-gear-1.jpg").open
game28.screenshots.create! picture: Rails.root.join("app/assets/images/metal-gear-2.jpg").open
game28.screenshots.create! picture: Rails.root.join("app/assets/images/metal-gear-3.jpg").open
game28.screenshots.create! picture: Rails.root.join("app/assets/images/metal-gear-4.jpg").open
game28.screenshots.create! picture: Rails.root.join("app/assets/images/metal-gear-5.jpg").open

game29 = Game.create! name: "Minecraft",
details: "Minecraft",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/minecraft-1.jpg").open

game29.game_genres.create! genre_id: rand(1..(genres.size))
game29.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game29.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game29.screenshots.create! picture: Rails.root.join("app/assets/images/minecraft-1.jpg").open
game29.screenshots.create! picture: Rails.root.join("app/assets/images/minecraft-2.jpg").open
game29.screenshots.create! picture: Rails.root.join("app/assets/images/minecraft-3.jpg").open

game30 = Game.create! name: "Mortal kombat",
details: "Mortal kombat",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/mortal-kombat-1.jpg").open

game30.game_genres.create! genre_id: rand(1..(genres.size))
game30.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game30.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game30.screenshots.create! picture: Rails.root.join("app/assets/images/mortal-kombat-1.jpg").open
game30.screenshots.create! picture: Rails.root.join("app/assets/images/mortal-kombat-2.jpg").open
game30.screenshots.create! picture: Rails.root.join("app/assets/images/mortal-kombat-3.jpg").open
game30.screenshots.create! picture: Rails.root.join("app/assets/images/mortal-kombat-4.jpg").open

game31 = Game.create! name: "Need for speed",
details: "Need for speed",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/need-for-speed-1.jpg").open

game31.game_genres.create! genre_id: rand(1..(genres.size))
game31.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game31.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game31.screenshots.create! picture: Rails.root.join("app/assets/images/need-for-speed-1.jpg").open
game31.screenshots.create! picture: Rails.root.join("app/assets/images/need-for-speed-2.jpg").open
game31.screenshots.create! picture: Rails.root.join("app/assets/images/need-for-speed-3.jpg").open
game31.screenshots.create! picture: Rails.root.join("app/assets/images/need-for-speed-4.jpg").open

game32 = Game.create! name: "Prince of Persia",
details: "Prince of Persia",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/prince-of-persia-1.jpg").open

game32.game_genres.create! genre_id: rand(1..(genres.size))
game32.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game32.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game32.screenshots.create! picture: Rails.root.join("app/assets/images/prince-of-persia-1.jpg").open
game32.screenshots.create! picture: Rails.root.join("app/assets/images/prince-of-persia-2.jpg").open
game32.screenshots.create! picture: Rails.root.join("app/assets/images/prince-of-persia-3.jpg").open
game32.screenshots.create! picture: Rails.root.join("app/assets/images/prince-of-persia-4.jpg").open

game33 = Game.create! name: "Prototype",
details: "Prototype",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/prototype-1.jpg").open

game33.game_genres.create! genre_id: rand(1..(genres.size))
game33.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game33.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game33.screenshots.create! picture: Rails.root.join("app/assets/images/prototype-1.jpg").open
game33.screenshots.create! picture: Rails.root.join("app/assets/images/prototype-2.jpg").open
game33.screenshots.create! picture: Rails.root.join("app/assets/images/prototype-3.jpg").open

game34 = Game.create! name: "Resident Evil",
details: "Resident Evil",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/resident-evil-1.jpg").open

game34.game_genres.create! genre_id: rand(1..(genres.size))
game34.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game34.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game34.screenshots.create! picture: Rails.root.join("app/assets/images/resident-evil-1.jpg").open
game34.screenshots.create! picture: Rails.root.join("app/assets/images/resident-evil-2.jpg").open
game34.screenshots.create! picture: Rails.root.join("app/assets/images/resident-evil-3.jpg").open
game34.screenshots.create! picture: Rails.root.join("app/assets/images/resident-evil-4.jpg").open

game35 = Game.create! name: "The Witcher",
details: "The Witcher",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/the-witcher-1.jpg").open

game35.game_genres.create! genre_id: rand(1..(genres.size))
game35.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game35.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game35.screenshots.create! picture: Rails.root.join("app/assets/images/the-witcher-1.jpg").open
game35.screenshots.create! picture: Rails.root.join("app/assets/images/the-witcher-2.jpg").open
game35.screenshots.create! picture: Rails.root.join("app/assets/images/the-witcher-3.jpg").open

game36 = Game.create! name: "Tom Rider",
details: "Tom Rider",
price: Faker::Number.decimal(l_digits: 2, r_digits: 2),
user_id: user2.id,
download_count: Faker::Number.between(from: 10, to: 10000),
picture: Rails.root.join("app/assets/images/tom-rider-1.jpg").open

game36.game_genres.create! genre_id: rand(1..(genres.size))
game36.trailers.create! youtube_link: "https://www.youtube.com/watch?v=SX_ViT4Ra7k&list=RDSX_ViT4Ra7k&index=1"


game36.reviews.create! user_id: user1.id,
content: Faker::Lorem.sentence(word_count: 5),
score: Faker::Number.between(from: 1, to: Settings.max_score)

game36.screenshots.create! picture: Rails.root.join("app/assets/images/tom-rider-1.jpg").open
game36.screenshots.create! picture: Rails.root.join("app/assets/images/tom-rider-2.jpg").open
game36.screenshots.create! picture: Rails.root.join("app/assets/images/tom-rider-3.jpg").open
game36.screenshots.create! picture: Rails.root.join("app/assets/images/tom-rider-4.jpg").open
game36.screenshots.create! picture: Rails.root.join("app/assets/images/tom-rider-5.jpg").open
