class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.text :stance

      t.timestamps null: false
    end
  end
end
