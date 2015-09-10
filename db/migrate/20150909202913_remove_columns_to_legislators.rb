class RemoveColumnsToLegislators < ActiveRecord::Migration
  def change

    remove_column :legislators, :bill, :text, :array => true, :default =>[]

  end
end
