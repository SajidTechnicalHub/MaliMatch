class AddReventToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :revent, :boolean
  end
end
