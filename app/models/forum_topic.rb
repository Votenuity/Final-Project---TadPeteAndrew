class ForumTopic < ActiveRecord::Base
  belongs_to :forum
  has_many :messages
end
