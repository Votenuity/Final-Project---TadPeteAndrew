class Legislator < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_by_full_name, :against => [:firstName, :lastName]

  def full_name
    firstName + ' ' + lastName
  end

  def shortDescription(bill)
    Bill.where(billName: bill).first["shortDescription"]
  end

end
