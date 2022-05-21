require 'active_record'

class Point < ActiveRecord::Base
	#Los puntos están relacionados con una predccion y un resultado
	belongs_to :prediction
	belongs_to :result

	#Calcular puntaje 
	def calculatePoints
		t1GoalsP = prediction.team1_goals
		t2GoalsP = prediction.team2_goals

		t1GoalsR = result.team1_goals
		t2GoalsR = result.team2_goals

		#Si la prediccion fue igual al resultado, son 3 puntos, sino 0
		if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR 
			3
		else
			0
		end 
	end
end

