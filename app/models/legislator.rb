class Legislator < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_by_full_name, :against => [:firstName, :lastName]

  validates_presence_of :position_title, :firstName, :lastName, :party, :link, :fullName,
                        :chamber, :bill_authored, :bill_co_authored, :bill_sponsored,
                        :bill_co_sponsored, :committees, :leg_pic_url, :session

  def full_name
    firstName + ' ' + lastName
  end

  def shortDescription(bill)
    if self.session == "2015"
      Bill.where(billName: bill).first["shortDescription"]
    else
      Bill.where(billName: bill).last["shortDescription"]
    end
  end

end
