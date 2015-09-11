class Legislator < ActiveRecord::Base

  validates_presence_of :position_title, :firstName, :lastName, :party, :link, :fullName,
                        :chamber, :bill_authored, :bill_co_authored, :bill_sponsored,
                        :bill_co_sponsored, :committees, :leg_pic_url, :session

  # legislator.picture_from_url "http://iga.in.gov/legislative/2014/portraits/legislator_john_waterman_147"

  def full_name
    firstName + ' ' + lastName
  end

end
