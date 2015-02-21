class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :zipcode
      t.string :number
      t.string :site
      t.integer :vote_id
      t.integer :comment_id

      t.timestamps null: false
    end
  end
end
