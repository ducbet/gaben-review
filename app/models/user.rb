class User < ApplicationRecord
  has_many :reviews
  has_many :games
  enum user_type: [:member, :admin, :maker]
  mount_uploader :picture, PictureUploader
  attr_reader :remember_token

  VALID_EMAIL_REGEX = /\A[\w.\-]+@[a-z+\d\-.]+\.+[a-z]+\z/i
  validates :nick_name, presence: true,
    length: {maximum: Settings.name_max_length}
  validates :email, presence: true,
    length: {maximum: Settings.email_max_length},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence: true, allow_nil: true,
    length: {minimum: Settings.pass_min_length}
   before_save :email_downcase
  has_secure_password

  scope :except_admin, ->() {where.not user_type: 1}

  def remember
    @remember_token = User.new_token
    update_attributes remember_digest: User.digest(remember_token)
  end

  def authenticated? remember_token
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password? remember_token
  end

  def forget
    update_attributes remember_digest: nil
  end

  class << self
    def digest string
      cost = if ActiveModel::SecurePassword.min_cost
               BCrypt::Engine::MIN_COST
             else
               BCrypt::Engine.cost
             end
      BCrypt::Password.create string, cost: cost
    end

    def new_token
      SecureRandom.urlsafe_base64
    end
  end

  def current_user? current_user
    self == current_user
  end

  def make game
    self == game.user
  end

  private

  def email_downcase
    self.email = email.downcase
  end
end
