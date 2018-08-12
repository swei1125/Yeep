class AddColumnsToBizs < ActiveRecord::Migration[5.2]
  def change
    add_column :bizs, :state, :string
    add_column :bizs, :zip, :integer
  end
end
