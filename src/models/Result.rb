require 'active_record'

class Result < ActiveRecord::Base
    #Un resultado pertenece a un partido y está relacionado con muchas predicciones 
    belongs_to :match
    has_many :prediction

    
end