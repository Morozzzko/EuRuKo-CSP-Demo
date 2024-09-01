class Attack < ApplicationRecord
  def author
    ::Author.new(
      uid: author_uid,
      nickname: author_nickname,
      image_url: author_image_url,
      profile_url: author_profile_url
    )
  end
end
