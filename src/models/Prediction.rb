 require 'active_record'

class Prediction < ActiveRecord::Base
	belongs_to :Match
	belongs_to :Gambler
end


