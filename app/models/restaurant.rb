class Restaurant < ActiveRecord::Base
	has_many :comments, through: :users
end
