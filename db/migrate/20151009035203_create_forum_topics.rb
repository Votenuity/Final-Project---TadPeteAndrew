class CreateForumTopics < ActiveRecord::Migration
  def change
    create_table :forum_topics do |t|

      t.timestamps null: false
    end
  end
end
