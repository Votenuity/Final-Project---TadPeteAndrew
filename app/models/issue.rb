class Issue < ActiveRecord::Base

  has_many :topics
  has_many :statements, through: :topics

end
