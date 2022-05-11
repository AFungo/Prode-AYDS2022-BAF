require 'active_record'

class Point < ActiveRecord::Base
	belongs_to :prediction
	belongs_to :result

	def calculatePoints
		t1GoalsP = prediction.Team1_goals
		t2GoalsP = prediction.Team2_goals

		t1GoalsR = result.Team1_goals
		t2GoalsR = result.Team2_goals

		if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR 
			3
		else
			0
		end 
	end
end

