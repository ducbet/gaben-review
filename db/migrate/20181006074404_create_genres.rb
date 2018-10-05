class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.references :game, foreign_key: true
      t.integer :genre

      t.timestamps
    end
    add_index :genres, ["game_id", "genre"], unique: true
  end
end
