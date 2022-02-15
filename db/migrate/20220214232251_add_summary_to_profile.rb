class AddSummaryToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :summary, :text
  end
end
