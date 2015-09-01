class AddFirstNameToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :party, :string
    add_column :candidates, :district, :string
  end
end
