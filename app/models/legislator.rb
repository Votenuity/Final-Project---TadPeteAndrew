class Legislator < ActiveRecord::Base

  validates_presence_of :position_title, :firstName, :lastName, :party, :link, :fullName,
                        :chamber, :bill_authored, :bill_co_authored, :bill_sponsored,
                        :bill_co_sponsored, :committees, :leg_pic_url, :session

  has_attached_file :picture

  def picture_from_url(url)
    self.picture = open(url)
  end

  def full_name
    firstName + " " + lastName
  end

  # legislator.picture_from_url "http://iga.in.gov/legislative/2014/portraits/legislator_john_waterman_147"


end
