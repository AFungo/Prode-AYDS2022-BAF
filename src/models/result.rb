# frozen_string_literal: true

require 'active_record'

# Clase que representa a los resultados de los partidos.
class Result < ActiveRecord::Base
  # Un resultado pertenece a un partido y está relacionado con muchas predicciones
  belongs_to :match
  has_many :prediction

  validates :match, uniqueness: true, presence: true
  validates :team1_goals, presence: true
  validates :team2_goals, presence: true
  validates :team1_goals, comparison: { greater_than: -1 }
  validates :team2_goals, comparison: { greater_than: -1 }

  def calculate_points(prediction)
    total_points = 0

    # Si la prediccion fue igual al resultado, son 2 puntos, sino 0
    total_points += 2 if winner == prediction.winner
    total_points += 1 if team1_goals == prediction.team1_goals
    total_points += 1 if team2_goals == prediction.team2_goals
    total_points
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
      points = calculate_points(p)
      g1 = p.gambler
      g1.Total_score = g1.Total_score + points
      g1.save
    end
  end
end
