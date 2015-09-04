class AddFamilyAndEducationAndElectedOfficeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :family, :string
    add_column :users, :education, :string
    add_column :users, :elected_office, :string
  end
end
