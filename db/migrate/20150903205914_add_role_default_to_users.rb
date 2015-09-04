class AddRoleDefaultToUsers < ActiveRecord::Migration
  def change
    change_column_default(:users, :role, "voter")
  end
end
