class AddColumnToBizs < ActiveRecord::Migration[5.2]
  def change
    add_column :bizs, :credit_card?, :string
    add_column :bizs, :apple_pay?, :string
    add_column :bizs, :google_pay?, :string
    add_column :bizs, :parking?, :string
    add_column :bizs, :bike_parking?, :string
    add_column :bizs, :take_out?, :string
    add_column :bizs, :delivery?, :string
    add_column :bizs, :outdoor_seat?, :string
    add_column :bizs, :wifi?, :string
    add_column :bizs, :has_tv?, :string
    add_column :bizs, :dog_allowed?, :string
    add_column :bizs, :reservation?, :string
    add_column :bizs, :good_for?, :string
    add_column :bizs, :waiter_service?, :string
    add_column :bizs, :caters?, :string
    add_column :bizs, :for_group?, :string
    add_column :bizs, :for_kids?, :string
    add_column :bizs, :attier?, :string
  end
end
