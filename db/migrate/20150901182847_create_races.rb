class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :title
      t.string :district

      t.timestamps null: false
    end
  end
end
