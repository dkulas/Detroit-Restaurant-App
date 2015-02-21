class AddStyleToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :style, :string
  end
end
