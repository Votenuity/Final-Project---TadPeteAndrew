class AddColumnToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :forum_id, :integer
  end
end
