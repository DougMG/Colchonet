class Room < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :title, :location, :description

	def complete_name
		"#{title}, #{location}"
	end
end
