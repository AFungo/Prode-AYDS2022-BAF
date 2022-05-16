require 'active_record'

class Result < ActiveRecord::Base
    belongs_to :match
    has_many :prediction
end