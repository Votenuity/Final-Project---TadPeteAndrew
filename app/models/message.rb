class Message < ActiveRecord::Base
  belongs_to :forum_topic
end
