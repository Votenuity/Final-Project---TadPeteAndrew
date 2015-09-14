class RemoveTableCills < ActiveRecord::Migration
  def change
    drop_table :cills
  end
end
