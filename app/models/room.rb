class Room < ActiveRecord::Base
	has_many :reviews
	has_many :reviewed_rooms, through: :reviews, source: :room
	belongs_to :user
	validates_presence_of :title, :location, :description

	def complete_name
		"#{title}, #{location}"
	end

	def most_recent
    	Room.all
  	end
end
