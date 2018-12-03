class CreateTrailers < ActiveRecord::Migration[5.2]
  def change
    create_table :trailers do |t|
      t.references :game, foreign_key: true
      t.string :youtube_link

      t.timestamps
    end
    add_index :trailers, ["game_id", "youtube_link"], unique: true
  end
end
