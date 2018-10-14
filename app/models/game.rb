class Game < ApplicationRecord
  has_many :reviews
  has_many :genres
  has_many :screenshots
  mount_uploader :picture, PictureUploader

  def count_average_score
    self.reviews.average(:score).round(2)
  end
end
