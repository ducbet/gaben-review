class CreateScreenshots < ActiveRecord::Migration[5.2]
  def change
    create_table :screenshots do |t|
      t.references :game, foreign_key: true
      t.string :picture

      t.timestamps
    end
    add_index :screenshots, ["game_id", "picture"], unique: true
  end
end
