class AddScholarToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :scholar, :text
  end
end
