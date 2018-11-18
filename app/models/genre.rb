class Genre < ApplicationRecord
  validates :genre, presence: true, uniqueness: {case_sensitive: false}
end
