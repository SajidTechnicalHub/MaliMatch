class AddProfileIdToRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :profile_id, :integer
  end
end
