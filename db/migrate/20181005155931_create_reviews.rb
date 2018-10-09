class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :game, foreign_key: true
      t.references :user, foreign_key: true
      t.string :content, null: false
      t.float :score, null: false, default: 0.0

      t.timestamps
    end
  end
end
