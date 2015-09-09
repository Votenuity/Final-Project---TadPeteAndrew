class AddColumnToLegislator < ActiveRecord::Migration
  def change

    add_column :legislators, :bill, :hstore, :array => true, :default => []

  end
end
