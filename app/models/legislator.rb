class Legislator < ActiveRecord::Base

  has_attached_file :picture

  def picture_from_url(url)
    self.picture = open(url)
  end


end
