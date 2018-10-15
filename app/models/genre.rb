class Genre < ApplicationRecord
  belongs_to :game

  class << self
    def genre_uniq
      all.map(&:genre).uniq
    end
  end
end
