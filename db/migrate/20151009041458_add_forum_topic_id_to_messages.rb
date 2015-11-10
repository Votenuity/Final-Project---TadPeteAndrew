class AddForumTopicIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :forum_topic_id, :integer
  end
end
