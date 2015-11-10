class RemoveColumnFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :forum_id
  end
end
