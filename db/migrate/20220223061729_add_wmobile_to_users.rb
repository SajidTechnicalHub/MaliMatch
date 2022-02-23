class AddWmobileToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wmobile, :string
  end
end
