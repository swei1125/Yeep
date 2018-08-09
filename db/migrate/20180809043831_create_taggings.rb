class CreateTaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :taggings do |t|
      t.integer :tag_id, null: false
      t.integer :biz_id, null: false

      t.timestamps
    end
    add_index :taggings, [:biz_id, :tag_id], unique: true
    add_index :taggings, :tag_id
  end
end
