class AddMoreColumnsToLegislators < ActiveRecord::Migration
  def change

    add_column :legislators, :avatar, :text, :default => ""

  end
end
