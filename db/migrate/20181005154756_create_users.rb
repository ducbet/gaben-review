class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nick_name, null: false
      t.string :email, null: false
      t.string :password_digest
      t.string :picture

      t.timestamps
    end

    add_index :users, :nick_name, unique: true
    add_index :users, :email, unique: true
  end
end
