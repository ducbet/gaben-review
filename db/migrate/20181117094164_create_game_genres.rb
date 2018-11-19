class CreateGameGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :game_genres do |t|
      t.references :game, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
    add_index :game_genres, ["game_id", "genre_id"], unique: true
  end
end
