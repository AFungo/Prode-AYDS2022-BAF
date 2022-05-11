require 'active_record'

class Match < ActiveRecord::Base
    belongs_to :match
    has_many :prediction
end