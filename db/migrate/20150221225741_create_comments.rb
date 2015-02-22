class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.belongs_to :user
      t.integer :restaurant_id
      t.string :title
      t.string :body
      t.string :author

      t.timestamps null: false
    end
  end
end
