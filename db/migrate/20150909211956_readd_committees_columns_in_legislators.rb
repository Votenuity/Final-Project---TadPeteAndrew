class ReaddCommitteesColumnsInLegislators < ActiveRecord::Migration
  def change

    add_column :legislators, :committees, :hstore, :array => true, :default => []

  end
end
