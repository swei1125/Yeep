class ChangeColumnOfBizs < ActiveRecord::Migration[5.2]
  def change
    remove_column :bizs, :reservation?
    remove_column :bizs, :delivery?
    remove_column :bizs, :take_out?
    remove_column :bizs, :credit_card?
    remove_column :bizs, :apple_pay?
    remove_column :bizs, :google_pay?
    remove_column :bizs, :good_for?
    remove_column :bizs, :parking?
    remove_column :bizs, :bike_parking?
    remove_column :bizs, :for_kids?
    remove_column :bizs, :for_group?
    remove_column :bizs, :attier?
    remove_column :bizs, :outdoor_seat?
    remove_column :bizs, :wifi?
    remove_column :bizs, :has_tv?
    remove_column :bizs, :waiter_service?
    remove_column :bizs, :caters?
    remove_column :bizs, :dog_allowed?

    add_column :bizs, :reservation, :string
    add_column :bizs, :delivery, :string
    add_column :bizs, :take_out, :string
    add_column :bizs, :credit_card, :string
    add_column :bizs, :apple_pay, :string
    add_column :bizs, :google_pay, :string
    add_column :bizs, :good_for, :string
    add_column :bizs, :parking, :string
    add_column :bizs, :bike_parking, :string
    add_column :bizs, :for_kids, :string
    add_column :bizs, :for_group, :string
    add_column :bizs, :attier, :string
    add_column :bizs, :outdoor_seat, :string
    add_column :bizs, :wifi, :string
    add_column :bizs, :has_tv, :string
    add_column :bizs, :waiter_service, :string
    add_column :bizs, :caters, :string
    add_column :bizs, :dog_allowed, :string
  end
end
