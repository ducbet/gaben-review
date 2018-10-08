class Game < ApplicationRecord
  has_many :reviews
  has_many :genres
  has_many :screenshots
  mount_uploader :picture, PictureUploader
end
