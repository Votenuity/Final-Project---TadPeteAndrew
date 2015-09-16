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
    Bill.where(billName: bill).first["shortDescription"]
  end

  def self.search(search_item)
    if search_item.present?
      search(search_item)
    else
      scoped
    end
  end

end
