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
  validates :Total_score, comparison: {greater_than: -1}
  
  def password
    @password ||= Password.new(password_digest)
  end

  #Crear una nueva contraseña 
  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

  #Crear una prediccion 
  def create_prediction(match,t1Goals,t2Goals)
    Prediction.new(team1_goals: t1Goals, team2_goals: t2Goals, match: match, gambler: self) 
  end

  def statistics()        
    # PROBLEMA:
    #¿Como traer la prediccion y el resultado del partido correspondiente de un cierto usuario?
    cant_aciertos = 0
    #Todas las predicciones de un cierto usuario
    predicciones_usuario = self.prediction
    cant_predicciones = 0
    #Resultados de los partidos por los que aposto
    #resultados = Results.where(prediction_id: gambler.prediction_id)
    predicciones_usuario.each do |p|
      r = Result.where(match_id: p.match_id).first()
      if(r != nil)
        t1GoalsP = p.team1_goals #Goles equipo 1 segun prediccion
        t2GoalsP = p.team2_goals #Goles equipo 2 segun prediccion
        t1GoalsR = r.team1_goals #Goles equipo 1 segun resultados
        t2GoalsR = r.team2_goals #Goles equipo 2 segun resultados 
        #Si la cantidad de goles coincide, se suma un acierto
        if t1GoalsP == t1GoalsR && t2GoalsP == t2GoalsR
          cant_aciertos = cant_aciertos + 1
        end
        cant_predicciones += 1
      end
    end    
    if(cant_predicciones != 0)
       self.Statistical_data = (cant_aciertos * 100) / cant_predicciones
    end
  end
end






