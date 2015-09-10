class AddColumnsToLegislators < ActiveRecord::Migration
  def change

    add_column :legislators, :bill_authored, :hstore, :array => true, :default => []
    add_column :legislators, :bill_co_authored, :hstore, :array => true, :default => []
    add_column :legislators, :bill_sponsored, :hstore, :array => true, :default => []
    add_column :legislators, :bill_co_sponsored, :hstore, :array => true, :default => []

  end
end
