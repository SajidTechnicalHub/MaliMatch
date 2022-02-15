class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :profiles, :date, :dob
  end
end
