class AddMakerToGames < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :user
  end
end
