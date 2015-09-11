class AddColumnsToBills < ActiveRecord::Migration
  def change
    add_column :bills, :session, :string, :default => ""
    add_column :bills, :title, :string, :default => ""
    add_column :bills, :shortDescription, :text, :default => ""
    add_column :bills, :billName, :string, :default => ""
    add_column :bills, :originChamber, :string, :default => ""
    add_column :bills, :currentChamber, :string, :default => ""
    add_column :bills, :type, :string, :default => ""
    add_column :bills, :authors, :hstore, :array => true, :default => []
    add_column :bills, :coauthors, :hstore, :array => true, :default => []
    add_column :bills, :sponsors, :hstore, :array => true, :default => []
    add_column :bills, :cosponsors, :hstore, :array => true, :default => []
    add_column :bills, :advisors, :hstore, :array => true, :default => []
    add_column :bills, :link, :string, :default => ""
    add_column :bills, :digest, :text, :default => ""
  end
end
