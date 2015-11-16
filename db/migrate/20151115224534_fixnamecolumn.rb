class Fixnamecolumn < ActiveRecord::Migration
  def change
  	rename_column :users, :name, :Fname
  	
  end
end
