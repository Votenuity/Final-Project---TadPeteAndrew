class AddSummaryAndBodyToRaces < ActiveRecord::Migration
  def change
    add_column :races, :summary, :string
    add_column :races, :body, :text
  end
end
