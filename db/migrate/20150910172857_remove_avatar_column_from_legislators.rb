class RemoveAvatarColumnFromLegislators < ActiveRecord::Migration
  def change

    remove_column :legislators, :avatar, :binary    

  end
end
