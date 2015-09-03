class ChangeDistrictInRacesToInteger < ActiveRecord::Migration
  def change
    change_column :races, :district, 'integer USING CAST(district AS integer)'
  end
end
