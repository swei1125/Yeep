class AddHoursColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :bizs, :hours, :string, array: true
  end
end
