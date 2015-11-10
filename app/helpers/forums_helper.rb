module ForumsHelper
  def possessive_message_board_title(word)
    if word.last == "s"
      word + "' Message Board"
    else
      word + "'s Message Board"
    end
  end
end
