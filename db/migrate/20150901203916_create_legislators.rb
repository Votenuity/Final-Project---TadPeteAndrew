class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.string :position_title
      t.string :firstName
      t.string :lastName
      t.string :party
      t.string :link
      t.string :fullName

      t.timestamps null: false
    end
  end
end
