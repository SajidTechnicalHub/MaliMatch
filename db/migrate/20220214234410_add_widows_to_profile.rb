class AddWidowsToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :widows, :boolean
  end
end
