class AddDefaultToLegislators < ActiveRecord::Migration
  def change
    change_column_default(:legislators, :position_title, "")
    change_column_default(:legislators, :firstName, "")
    change_column_default(:legislators, :lastName, "")
    change_column_default(:legislators, :party, "")
    change_column_default(:legislators, :link, "")
    change_column_default(:legislators, :fullName, "")
  end
end
