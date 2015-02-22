class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.belongs_to :user
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
