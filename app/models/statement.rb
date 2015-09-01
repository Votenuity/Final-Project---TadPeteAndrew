class Statement < ActiveRecord::Base
  belongs_to :user
  has_many :topics
  has_many :issues, through: :topics
end
