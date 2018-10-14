class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.references :review, foreign_key: true
      t.references :user, foreign_key: true
      t.string :content, null: false

      t.timestamps
    end
  end
end
