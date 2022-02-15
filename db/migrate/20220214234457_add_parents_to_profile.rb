class AddParentsToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :parents, :boolean
  end
end
