class AddPatternToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :pattern, :string
  end
end
