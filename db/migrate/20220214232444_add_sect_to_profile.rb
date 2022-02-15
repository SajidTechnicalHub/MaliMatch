class AddSectToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :sect, :string
  end
end
