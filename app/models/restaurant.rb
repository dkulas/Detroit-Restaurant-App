class Restaurant < ActiveRecord::Base
	has_many :comments, through: :users
	has_many :votes, through: :users
end
