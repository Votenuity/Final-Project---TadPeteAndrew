class ChangeColumnName < ActiveRecord::Migration
  def change

    remove_column :cills, :type, :string
    add_column :cills, :cill_type, :string, :default => ""

  end
end
