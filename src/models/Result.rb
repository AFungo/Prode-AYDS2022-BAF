require 'active_record'

class Result < ActiveRecord::Base
  # Un resultado pertenece a un partido y está relacionado con muchas predicciones
  belongs_to :match
  has_many :prediction

  validates :match, uniqueness: true, presence: true
  validates :team1_goals, presence: true
  validates :team2_goals, presence: true
  validates :team1_goals, comparison: { greater_than: -1 }
  validates :team2_goals, comparison: { greater_than: -1 }

  def calculatePoints(prediction)
    totalPoints = 0

    # Si la prediccion fue igual al resultado, son 2 puntos, sino 0
    totalPoints += 2 if winner == prediction.winner
    totalPoints += 1 if team1_goals == prediction.team1_goals
    totalPoints += 1 if team2_goals == prediction.team2_goals
    totalPoints
  end

  def winner
    if team1_goals > team2_goals
      match.local
    elsif team2_goals > team1_goals
      match.visitor
    end
  end

  def change_score
    # Todas las predicciones de un partido
    pred = Prediction.where(match: match)
    pred.each do |p|
      points = calculatePoints(p)
      g1 = p.gambler
      g1.Total_score = g1.Total_score + points
      g1.save
    end
  end
end
