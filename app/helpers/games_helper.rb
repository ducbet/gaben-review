module GamesHelper
  YOUTUBE_SHORT = %r{youtu\.be\/([^\?]*)}
  YOUTUBE_LONG = %r{^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*}

  def youtube_embed youtube_url
    return unless youtube_url
    matches = YOUTUBE_SHORT.match youtube_url
    if matches
      youtube_id = matches[1]
    else
      matches = YOUTUBE_LONG.match youtube_url
      youtube_id = matches[5]
    end
    content_tag :iframe, "", src: "https://www.youtube.com/embed/#{youtube_id}",
      width: 500,
      height: 300, frameborder: 0,
      allow: "autoplay; encrypted-media", allowfullscreen: true
  end
end
