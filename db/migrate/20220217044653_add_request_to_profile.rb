class AddRequestToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :request, :integer
  end
end
