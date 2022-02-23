class AddWquestionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wquestion, :boolean
  end
end
