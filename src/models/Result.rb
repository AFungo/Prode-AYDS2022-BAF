require 'active_record'

class Result < ActiveRecord::Base
    #Un resultado pertenece a un partido y está relacionado con muchas predicciones 
    belongs_to :match
    has_many :prediction
    
    validates :match, uniqueness: true, presence: true
    validates :team1_goals, presence: true
    validates :team2_goals,  presence: true
    validates :team1_goals, comparison: {greater_than: -1}
    validates :team2_goals, comparison: {greater_than: -1}


    def calculatePoints(prediction)
		t1GoalsP = prediction.team1_goals
		t2GoalsP = prediction.team2_goals

		t1GoalsR = self.team1_goals
		t2GoalsR = self.team2_goals

        totalPoints = 0

		#Si la prediccion fue igual al resultado, son 2 puntos, sino 0
        if winner().name == prediction.winner().name
			totalPoints += 2
        end
		if team1_goals == prediction.team1_goals
			totalPoints += 1
        end
        if team2_goals == prediction.team2_goals
            totalPoints += 1
        end 
        totalPoints
    end

    def winner()
        if team1_goals > team2_goals
            match.local
        else 
            if team2_goals > team1_goals
              match.visitor
            else
                null
            end            
        end
    end


    def change_score
        #Todas las predicciones de un partido 
        pred = Prediction.where(match: self.match)
        pred.each do |p|
            points = self.calculatePoints(p)
            g1 = p.gambler
            g1.Total_score = g1.Total_score + points
            g1.save
        end       
    end

    
end