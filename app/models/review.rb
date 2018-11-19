class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :reply, dependent: :destroy

  validates :content, presence: true

  # scope :newest_first, ->{order created_at: :desc}
  default_scope {order created_at: :desc}

  scope :all_except, ->(user) {where.not user_id: user.id}
end
