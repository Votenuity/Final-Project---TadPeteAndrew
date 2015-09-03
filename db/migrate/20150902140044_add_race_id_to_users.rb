class AddRaceIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :race_id, :integer
  end
end
