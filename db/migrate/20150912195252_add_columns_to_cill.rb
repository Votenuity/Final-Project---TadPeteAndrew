class AddColumnsToCill < ActiveRecord::Migration
  def change

    add_column :cills, :session, :string, :default => ""
    add_column :cills, :title, :string, :default => ""
    add_column :cills, :shortDescription, :text, :default => ""
    add_column :cills, :billName, :string, :default => ""
    add_column :cills, :originChamber, :string, :default => ""
    add_column :cills, :currentChamber, :string, :default => ""
    add_column :cills, :type, :string, :default => ""
    add_column :cills, :authors, :hstore, :array => true, :default => []
    add_column :cills, :coauthors, :hstore, :array => true, :default => []
    add_column :cills, :sponsors, :hstore, :array => true, :default => []
    add_column :cills, :cosponsors, :hstore, :array => true, :default => []
    add_column :cills, :advisors, :hstore, :array => true, :default => []
    add_column :cills, :link, :string, :default => ""
    add_column :cills, :digest, :text, :default => ""    

  end
end
