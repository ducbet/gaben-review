module UsersHelper
  def gravatar_for user
    gravatar_id = Digest::MD5.hexdigest user.email.downcase
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag gravatar_url, alt: user.nick_name, class: "gravatar"
  end

  def had_comment_in game
    current_user.reviews.find_by game_id: game.id
  end
end
