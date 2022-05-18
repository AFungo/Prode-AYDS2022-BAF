require 'active_record'

class Prediction < ActiveRecord::Base
	belongs_to :match
	belongs_to :gambler

	def changeScore
		r = results.get(match)
		p = self
		Point.new(prediction: prediction, result: r)
		Gambler.Total_score + Point.calculatePoints
	end

end


