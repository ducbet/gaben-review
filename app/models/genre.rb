class Genre < ApplicationRecord
  belongs_to :game
  enum genre: ["action", "fantasy"]
end
