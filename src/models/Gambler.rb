require 'active_record'

class Gambler < ActiveRecord::Base
	has_many : prediction , foreing_key: 'predictions_id' 
end






