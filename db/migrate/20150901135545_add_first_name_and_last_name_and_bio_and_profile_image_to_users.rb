class AddFirstNameAndLastNameAndBioAndProfileImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :text
    add_column :users, :profile_image, :string
    add_column :users, :party, :string
  end
end
