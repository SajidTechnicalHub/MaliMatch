class AddAgreeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :agree, :boolean
  end
end
