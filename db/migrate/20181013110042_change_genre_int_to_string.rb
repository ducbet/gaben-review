class ChangeGenreIntToString < ActiveRecord::Migration[5.2]
  def change
    change_column :genres, :genre, :string
  end
end
