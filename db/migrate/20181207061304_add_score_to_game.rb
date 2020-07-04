class AddScoreToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :score, :float, default: 0.0
  end
end
