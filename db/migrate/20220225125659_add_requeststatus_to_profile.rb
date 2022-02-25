class AddRequeststatusToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :requeststatus, :string
  end
end
