class AddColumsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :title, :string
    add_column :messages, :body, :text
    add_column :messages, :user_id, :integer
  end
end
