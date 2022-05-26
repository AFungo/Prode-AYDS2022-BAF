require 'active_record'

class Result < ActiveRecord::Base
    #Un resultado pertenece a un partido y está relacionado con muchas predicciones 
    belongs_to :match
    has_many :prediction
   
    def calculatePoints(mat)
		t1GoalsP = mat.team1_goals
		t2GoalsP = mat.team2_goals

		t1GoalsR = self.team1_goals
		t2GoalsR = self.team2_goals

		#Si la prediccion fue igual al resultado, son 3 puntos, sino 0
		if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR 
			3
		else
			0
		end 
	end

    def change_score
        pred = Prediction.find_by match: self.match
        pred.each do |p|
            points = self.calculatePoints(p.match)
            p.gambler.Total_score = p.gambler.Total_score + points
        end
       
    end

end