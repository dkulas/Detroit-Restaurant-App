class RemoveTypeFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :type, :string
  end
end
