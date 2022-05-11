require 'active_record'

class Point < ActiveRecord::Base
	belongs_to :prediction
	belongs_to :result
end

