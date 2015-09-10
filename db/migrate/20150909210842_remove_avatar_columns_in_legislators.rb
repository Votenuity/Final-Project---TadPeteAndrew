class RemoveAvatarColumnsInLegislators < ActiveRecord::Migration
  def change

    remove_column :legislators, :avatar, :text    

  end
end
