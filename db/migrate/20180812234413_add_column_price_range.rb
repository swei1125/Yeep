class AddColumnPriceRange < ActiveRecord::Migration[5.2]
  def change
    add_column :bizs, :price_range, :string
  end
end
