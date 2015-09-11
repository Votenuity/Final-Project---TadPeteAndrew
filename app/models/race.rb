class Race < ActiveRecord::Base
  has_many :users
  acts_as_followable

 #  extend FriendlyId
 #  friendly_id :title, use: :slugged
 #
 #  def slug=(value)
 #   if value.present?
 #     write_attribute(:slug, value)
 #   end
 # end

end
