class AddRegionToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :region, :string
  end
end
