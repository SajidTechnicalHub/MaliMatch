class AddRevertToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :revert, :boolean
  end
end
