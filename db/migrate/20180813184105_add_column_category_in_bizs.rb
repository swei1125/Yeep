class AddColumnCategoryInBizs < ActiveRecord::Migration[5.2]
  def change
    add_column :bizs, :category, :string, null: false
  end
end
