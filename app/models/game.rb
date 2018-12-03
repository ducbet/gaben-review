class Game < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :game_genres, dependent: :destroy
  has_many :genres, through: :game_genres
  has_many :screenshots, dependent: :destroy
  has_many :trailers, dependent: :destroy
  has_many :wishlists
  has_many :users, through: :wishlists
  belongs_to :user
  accepts_nested_attributes_for :trailers, allow_destroy: true
  accepts_nested_attributes_for :screenshots, allow_destroy: true, reject_if: proc { |attributes| attributes['picture'].blank? }
  mount_uploader :picture, PictureUploader

  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :details, presence: true
  validates :price, presence: true
  validates :picture, presence: true

  def count_average_score
    return 0 if reviews.empty?
    reviews.average(:score).round(2)
  end
end
