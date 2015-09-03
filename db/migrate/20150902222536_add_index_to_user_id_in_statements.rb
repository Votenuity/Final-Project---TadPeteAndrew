class AddIndexToUserIdInStatements < ActiveRecord::Migration
  def change
     add_index :statements, :user_id
  end
end
