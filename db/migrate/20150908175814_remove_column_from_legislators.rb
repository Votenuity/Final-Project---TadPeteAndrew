class RemoveColumnFromLegislators < ActiveRecord::Migration
  def change

    remove_column :legislators, :bills, :text, :array => true, :default =>[]

  end
end
