class ChangeColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :bizs, :phone_number
    add_column :bizs, :phone_number, :string, null: false
  end
end
