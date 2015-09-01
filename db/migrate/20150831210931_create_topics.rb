class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :issue_id
      t.integer :statements_id

      t.timestamps null: false
    end
  end
end
