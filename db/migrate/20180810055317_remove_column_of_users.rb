class RemoveColumnOfUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :profile_img
  end
end
