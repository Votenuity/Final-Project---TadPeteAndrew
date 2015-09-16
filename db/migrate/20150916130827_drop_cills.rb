class DropCills < ActiveRecord::Migration
  def change
    drop_table :cills
  end
end
