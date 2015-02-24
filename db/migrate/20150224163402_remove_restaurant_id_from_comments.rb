class RemoveRestaurantIdFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :restaurant_id, :integer
  end
end
