class Genre < ApplicationRecord
  belongs_to :game

  class << self
    def all_genre
      ["Action","Adventure", "Casual", "Indie", "Racing", "RPG", "Simulation",        "Sports", "Strategy"]
    end

    def genre_uniq
      all.map(&:genre).uniq
    end
  end
end
