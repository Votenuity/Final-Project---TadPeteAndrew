class AddChamberAndCommitteesAndBillsToLegislator < ActiveRecord::Migration
  def change
    add_column :legislators, :chamber, :string, default: ""
    add_column :legislators, :committees, :text, array:true, default: []
    add_column :legislators, :bills, :text, array:true, default: []
  end
end
