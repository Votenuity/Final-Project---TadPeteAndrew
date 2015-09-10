class DropLegislatures < ActiveRecord::Migration
  def change

    drop_table :legislatures

  end
end
