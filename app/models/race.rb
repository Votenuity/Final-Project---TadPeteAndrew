class Race < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  def slug
    title.strip.downcase.gsub(/[:,'"%^&*+=<>.`~]/,"").gsub("’","").gsub("  ", " ").gsub(" ", "-")
  end

end
