module UsersHelper

  def image_check
    if @user.profile_image.blank? || @user.profile_image.nil?
      image_tag(@user.avatar.url(:medium))
    else
      image_tag(@user.profile_image, size: "300x300")
    end
  end

  def image_check_show
    if @user.profile_image.blank? || @user.profile_image.nil?
      @user.avatar.url(:medium)
    else
      @user.profile_image
    end
  end


  def possessive(word)
    if word.last == "s"
      word + "'"
    else
      word + "'s"
    end
  end

  def capitalize_role
    @user.role.slice(0,1).capitalize + @user.role.slice(1..-1)
  end

end
