class AddSubscriptionToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :subscription, :date
  end
end
