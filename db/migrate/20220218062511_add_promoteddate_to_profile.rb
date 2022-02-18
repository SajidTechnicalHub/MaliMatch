class AddPromoteddateToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :promoteddate, :date
  end
end
