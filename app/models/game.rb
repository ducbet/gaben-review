class Game < ApplicationRecord
  has_many :reviews
  has_many :genres
  has_many :screenshots
end
