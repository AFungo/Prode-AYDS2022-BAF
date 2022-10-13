# frozen_string_literal: true

require 'active_record'
require 'bcrypt'

# Clase que representa a los usuarios.
class Gambler < ActiveRecord::Base
  include BCrypt
  # Un jugador hace muchas predicciones
  has_many :prediction
  # Si o si debe tener nombre, apellido y mail
  validates :name, presence: true
  validates :Email, presence: true
  # El mail debe ser unico
  validates :name, uniqueness: true
  validates :Email, uniqueness: true
  validates :Total_score, comparison: { greater_than: -1 }

  def password
    @password ||= Password.new(password_digest)
  end

  # Crear una nueva contraseña
  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

  # Crear una prediccion
  def create_prediction(match, t1goals, t2goals)
    Prediction.new(team1_goals: t1goals, team2_goals: t2goals, match: match, gambler: self)
  end

  def statistics
    # PROBLEMA:
    # ¿Como traer la prediccion y el resultado del partido correspondiente de un cierto usuario?
    cant_aciertos = 0
    # Todas las predicciones de un cierto usuario
    # predicciones_usuario = prediction
    cant_predicciones = 0
    # Resultados de los partidos por los que aposto
    # resultados = Results.where(prediction_id: gambler.prediction_id)
    prediction.each do |p|
      r = Result.where(match_id: p.match_id).first
      next if r.nil?

      # p.team1_goals - Goles equipo 1 segun prediccion
      # p.team2_goals - Goles equipo 2 segun prediccion
      # r.team1_goals - Goles equipo 1 segun resultados
      # r.team2_goals - Goles equipo 2 segun resultados
      # Si la cantidad de goles coincide, se suma un acierto
      cant_aciertos += 1 if p.team1_goals == r.team1_goals && p.team2_goals == r.team2_goals
      cant_predicciones += 1
    end
    self.Statistical_data = (cant_aciertos * 100) / cant_predicciones if cant_predicciones != 0
  end
end
