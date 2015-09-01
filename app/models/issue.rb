class Issue < ActiveRecord::Base
  has_many :statements
  has_many :statements, through: :topics
end
