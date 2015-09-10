class AddSessionColumnsInLegislators < ActiveRecord::Migration
  def change

    add_column :legislators, :session, :string, :default => ""

  end
end
