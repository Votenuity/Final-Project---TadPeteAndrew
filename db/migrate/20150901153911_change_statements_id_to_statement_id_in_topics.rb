class ChangeStatementsIdToStatementIdInTopics < ActiveRecord::Migration
  def change
    rename_column :topics, :statements_id, :statement_id
  end
end
