class Topic < ActiveRecord::Base

  belongs_to :issue
  belongs_to :statement

end
