class Restroom < ActiveRecord::Base

	has_many :reviews
	belongs_to :building

end
