class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.string :details, null: false
      t.string :picture, null: false
      t.float :price, null: false

      t.timestamps
    end
  end
end
