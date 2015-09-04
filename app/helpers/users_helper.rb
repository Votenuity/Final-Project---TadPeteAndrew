module UsersHelper

  def image_check
    if @user.profile_image.blank? || @user.profile_image.nil?
      image_tag(@user.avatar.url(:medium))
    else
      image_tag(@user.profile_image, size: "300x300")
    end
  end

  def possessive(word)
    if word.last == "s"
      word + "'"
    else
      word + "'s"
    end
  end

end
