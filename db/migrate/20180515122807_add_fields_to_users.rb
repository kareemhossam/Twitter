class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :gender, :integer, default: 0, index: true
    add_column :users, :marital_status, :integer, default: 0, index: true
    add_column :users, :phone_number, :string
    add_column :users, :home_town, :string
  end
end
