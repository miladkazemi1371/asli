class Program < ActiveRecord::Base
	has_many :exercises
	has_many :involvements
	has_many :workouts , :through => :involvements
end
