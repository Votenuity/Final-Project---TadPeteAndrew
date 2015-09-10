class RemoveCommitteesColumnsInLegislators < ActiveRecord::Migration
  def change

    remove_column :legislators, :committees, :text, :array => true    

  end
end
