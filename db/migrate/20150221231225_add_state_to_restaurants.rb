class AddStateToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :state, :string
  end
end
