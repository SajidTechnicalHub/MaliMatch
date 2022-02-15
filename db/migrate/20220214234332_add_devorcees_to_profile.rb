class AddDevorceesToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :devorcees, :boolean
  end
end
