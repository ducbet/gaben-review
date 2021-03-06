# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_07_061304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_genres", force: :cascade do |t|
    t.integer "game_id"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id", "genre_id"], name: "index_game_genres_on_game_id_and_genre_id", unique: true
    t.index ["game_id"], name: "index_game_genres_on_game_id"
    t.index ["genre_id"], name: "index_game_genres_on_genre_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name", null: false
    t.string "details", null: false
    t.string "picture", null: false
    t.float "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "download_count", default: 0
    t.float "score", default: 0.0
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer "review_id"
    t.integer "user_id"
    t.string "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_id"], name: "index_replies_on_review_id"
    t.index ["user_id"], name: "index_replies_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "game_id"
    t.integer "user_id"
    t.string "content", null: false
    t.float "score", default: 0.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_reviews_on_game_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "screenshots", force: :cascade do |t|
    t.integer "game_id"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id", "picture"], name: "index_screenshots_on_game_id_and_picture", unique: true
    t.index ["game_id"], name: "index_screenshots_on_game_id"
  end

  create_table "trailers", force: :cascade do |t|
    t.integer "game_id"
    t.string "youtube_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id", "youtube_link"], name: "index_trailers_on_game_id_and_youtube_link", unique: true
    t.index ["game_id"], name: "index_trailers_on_game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nick_name", null: false
    t.string "email", null: false
    t.string "password_digest"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_digest"
    t.integer "user_type", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nick_name"], name: "index_users_on_nick_name", unique: true
  end

  create_table "wishlists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_wishlists_on_game_id"
    t.index ["user_id", "game_id"], name: "index_wishlists_on_user_id_and_game_id", unique: true
    t.index ["user_id"], name: "index_wishlists_on_user_id"
  end

end
