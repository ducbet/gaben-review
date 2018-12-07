class AddDownloadToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :download_count, :integer, default: 0
  end
end
