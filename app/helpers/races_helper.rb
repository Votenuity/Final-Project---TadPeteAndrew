module RacesHelper
  def possessive_message(word)
    if word.last == "s"
      word + "' Message Board"
    else
      word + "'s Message Board"
    end
  end
end
