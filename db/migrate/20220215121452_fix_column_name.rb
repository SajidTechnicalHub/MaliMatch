class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    
    rename_column :profiles, :educatiion, :education
    rename_column :profiles, :pratice, :practice
  end
end
