class Race < ActiveRecord::Base
  has_many :users
  acts_as_followable

  # extend FriendlyId
  # friendly_id :title, use: :slugged
  #
  # def slug
  #   title.strip.downcase.gsub(/[:,'"%^&*+=<>.`~]/,"").gsub("’","").gsub("  ", " ").gsub(" ", "-")
  # end

end
