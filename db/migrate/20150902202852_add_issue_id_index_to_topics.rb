class AddIssueIdIndexToTopics < ActiveRecord::Migration
  def change
    add_index :topics, :issue_id
  end
end
