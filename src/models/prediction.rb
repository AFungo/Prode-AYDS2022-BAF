# frozen_string_literal: true

require 'active_record'

# Clase que representa a las prediciones que realizan los usuarios.
class Prediction < ActiveRecord::Base
  # Una prediccion pertenece a un partido y a un jugador
  belongs_to :match
  belongs_to :gambler
  validates :gambler, uniqueness: { scope: :match, message: 'Once prediction per match' }
  validates :team1_goals, comparison: { greater_than: -1 }
  validates :team2_goals, comparison: { greater_than: -1 }

  def winner
    if team1_goals > team2_goals
      match.local
    elsif team2_goals > team1_goals
      match.visitor
    end
  end
end
