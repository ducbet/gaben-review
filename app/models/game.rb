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

  scope :top_rated, ->(num) {order(score: :desc).limit(num)}
  scope :new_arrivals, ->(num) {order(created_at: :desc).limit(num)}
  scope :best_sellers, ->(num) {order(download_count: :desc).limit(num)}

  def calculate_average_score
    if reviews.empty?
      update_attributes(score: 0)
    else
      update_attributes(score: reviews.average(:score).round(2))
    end
  end
end
