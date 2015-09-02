class AddStatementIdIndexToTopics < ActiveRecord::Migration
  def change
    add_index :topics, :statement_id
  end
end
