class DropCandidates < ActiveRecord::Migration
  def change
    drop_table :candidates
  end
end
