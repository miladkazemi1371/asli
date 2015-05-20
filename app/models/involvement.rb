class Involvement < ActiveRecord::Base

	belongs_to :program
	belongs_to :workout
end
