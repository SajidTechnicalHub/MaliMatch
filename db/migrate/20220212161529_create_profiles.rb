class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :fname
      t.string :surname
      # t.text :date
      t.string :status
      t.boolean :children
      t.boolean :ethnic
      t.string :ethnicity
      t.string :nationality
      t.string :weight
      t.string :build
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
