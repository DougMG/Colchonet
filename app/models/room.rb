class Room < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	has_many :reviewed_rooms, through: :reviews, source: :room
	belongs_to :user
	validates_presence_of :title, :location, :description

	scope :most_recent, -> { all} 
	def complete_name
		"#{title}, #{location}"
	end

	def most_recent
    	Room.all
  	end
end
