class AddWnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wname, :string
  end
end
