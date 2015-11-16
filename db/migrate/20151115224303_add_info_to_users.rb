class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :LName, :string
    add_column :users, :Gender, :string
    add_column :users, :Age, :string
    add_column :users, :CNICno, :string
    add_column :users, :PhnNo, :string
    add_column :users, :MobileNo, :string
    add_column :users, :Username, :string
    add_column :users, :Password, :string
  end
end
