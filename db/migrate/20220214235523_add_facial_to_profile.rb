class AddFacialToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :facial, :string
  end
end
