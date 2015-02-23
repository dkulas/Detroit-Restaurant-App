class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.belongs_to :user, index: true
      t.belongs_to :restaurant, index: true
      t.string :title
      t.string :body
      t.string :author

      t.timestamps null: false
    end
  end
end
