class AddLegislatorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :legislator, :string
  end
end
