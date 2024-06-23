class AddFirstNameAndLastNameToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string unless column_exists?(:users, :first_name)
    add_column :users, :last_name, :string unless column_exists?(:users, :last_name)
  end
end
