

class Prediction < ApplicationRecord
	
	def initialize(Team1_goals,Team2_goals)
		@Team1_goals = Team1_goals
		@Team2_goals = Team2_goals
	end
	has_one = Result
end


