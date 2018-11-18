class Game < ApplicationRecord
  has_many :reviews
  has_many :game_genres
  has_many :genres, through: :game_genres
  has_many :screenshots
  accepts_nested_attributes_for :screenshots, allow_destroy: true, reject_if: proc { |attributes| attributes['picture'].blank? }
  mount_uploader :picture, PictureUploader

  validates :picture, presence: true

  def count_average_score
    return 0 if reviews.empty?
    reviews.average(:score).round(2)
  end
end
