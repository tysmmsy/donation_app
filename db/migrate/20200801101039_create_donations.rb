class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.integer :price,   index: true,  null: false
      t.references :user,               null: false,  foreign_key: true
      t.timestamps
    end
  end
end
