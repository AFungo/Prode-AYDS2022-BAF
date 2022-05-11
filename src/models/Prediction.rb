require 'active_record'

class Prediction < ActiveRecord::Base
	belongs_to :match
	belongs_to :gambler
end


