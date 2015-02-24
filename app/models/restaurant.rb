class Restaurant < ActiveRecord::Base
	has_many :comments, through: :users
	acts_as_votable
end
