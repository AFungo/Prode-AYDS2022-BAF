require 'active_record'

class Prediction < ActiveRecord::Base
	#Una prediccion pertenece a un partido y a un jugador 
	belongs_to :match
	belongs_to :gambler


end


