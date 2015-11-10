class AddColumnToForums < ActiveRecord::Migration
  def change
    add_column :forums, :race_id, :integer
  end
end
