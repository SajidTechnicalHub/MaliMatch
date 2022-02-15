class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :sender_id
      t.integer :recever_id
      t.text :message

      t.timestamps
    end
  end
end
