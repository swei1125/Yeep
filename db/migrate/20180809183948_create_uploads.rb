class CreateUploads < ActiveRecord::Migration[5.2]
  def change
    create_table :uploads do |t|
      t.integer :user_id, null: false
      t.integer :biz_id, null: false

      t.timestamps
    end
    add_index :uploads, :user_id
    add_index :uploads, :biz_id
  end
end
