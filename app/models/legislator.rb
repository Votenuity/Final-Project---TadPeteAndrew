class Legislator < ActiveRecord::Base

  has_attached_file :picture

  def picture_from_url(url)
    self.picture = open(url)
  end

  # legislator.picture_from_url "http://iga.in.gov/legislative/2014/portraits/legislator_john_waterman_147"


end
