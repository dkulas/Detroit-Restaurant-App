class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :twitter_handle
      t.string :provider
      t.string :uid
      t.string :name
    end
  end
end
