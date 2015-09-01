class Statement < ActiveRecord::Base
  has_many :issues
  has_many :issues, through: :topics
end
