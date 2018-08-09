class CreateBizs < ActiveRecord::Migration[5.1]
  def change
    create_table :bizs do |t|
      t.string :name, null: false
      t.string :price, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.integer :phone_number, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
    add_index :bizs, :name
    add_index :bizs, :user_id
  end
end
