class AddDressingToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :dressing, :text
  end
end
