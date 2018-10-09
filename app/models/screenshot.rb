class Screenshot < ApplicationRecord
  belongs_to :game
  mount_uploader :picture, PictureUploader
end
