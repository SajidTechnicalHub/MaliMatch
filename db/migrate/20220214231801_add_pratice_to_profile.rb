class AddPraticeToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :pratice, :text
  end
end
