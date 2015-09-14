class Legislator < ActiveRecord::Base
  include PgSearch
  validates_presence_of :position_title, :firstName, :lastName, :party, :link, :fullName,
                        :chamber, :bill_authored, :bill_co_authored, :bill_sponsored,
                        :bill_co_sponsored, :committees, :leg_pic_url, :session

  def full_name
    firstName + ' ' + lastName
  end

  def shortDescription(bill)
    Cill.where(billName: bill).first["shortDescription"]
  end

end
