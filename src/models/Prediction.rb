require 'active_record'

class Prediction < ActiveRecord::Base
	#Una prediccion pertenece a un partido y a un jugador 
	belongs_to :match
	belongs_to :gambler

	def changeScore
		#A r le asigno el resultado de un partido particular
		r = results.get(match)
		#p es la prediccion actual
		p = self

		#Sumo al puntaje total del jugador los puntos que obtuvo por esta predicción
		Point.new(prediction: prediction, result: r)
		Gambler.Total_score + Point.calculatePoints
	end

end


