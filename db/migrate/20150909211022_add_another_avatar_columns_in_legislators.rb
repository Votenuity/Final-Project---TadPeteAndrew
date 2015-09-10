class AddAnotherAvatarColumnsInLegislators < ActiveRecord::Migration
  def change

    add_column :legislators, :avatar, :binary, :limit => 1.megabytes

  end
end
