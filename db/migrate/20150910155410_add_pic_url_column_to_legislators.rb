class AddPicUrlColumnToLegislators < ActiveRecord::Migration
  def change

    add_column :legislators, :leg_pic_url, :string, :default => ""

  end
end
