class AddWemailToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wemail, :string
  end
end
