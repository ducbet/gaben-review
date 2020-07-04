class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :reply, dependent: :destroy

  after_save :recalculate_game_score
  after_destroy :recalculate_game_score

  validates :content, presence: true

  # scope :newest_first, ->{order created_at: :desc}
  default_scope {order created_at: :desc}

  scope :all_except, ->(user) {where.not user_id: user.id}

  private

  def recalculate_game_score
    self.game.calculate_average_score
  end
end
