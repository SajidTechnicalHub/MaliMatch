class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :sender_id, reference: :user
      t.integer :receiver_id, reference: :user
      t.integer :requests

      t.timestamps
    end
  end
end
