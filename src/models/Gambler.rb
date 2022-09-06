require 'active_record'
require 'bcrypt'

class Gambler < ActiveRecord::Base
	include BCrypt
  #Un jugador hace muchas predicciones
	has_many :prediction
  #Si o si debe tener nombre, apellido y mail
  validates  :name, presence: true
  validates :Email, presence: true
  #El mail debe ser unico
  validates  :name, uniqueness: true
  validates :Email, uniqueness: true
  
  def password
    @password ||= Password.new(password_digest)
  end

  #Crear una nueva contraseña 
  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

  #Crear una prediccion 
  def create_prediction=(match,t1Goals,t2Goals)
    Prediction.new(team1_goals: t1Goals, team2_goals: t2Goals, match: match, gambler: self) 
  end

  end






