class AddIslamicToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :islamic, :text
  end
end
