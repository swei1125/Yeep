class AddMoreColumnsToBizs < ActiveRecord::Migration[5.2]
  def change
    add_column :bizs, :appointment_only, :string
    add_column :bizs, :wheelchair, :string
    add_column :bizs, :accept_insurance, :string
    add_column :bizs, :neutral_restrooms, :string
  end
end
