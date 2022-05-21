require 'active_record'

class Team < ActiveRecord::Base
    #Un equipo está relacionado con muchos partidos 
    has_many  :matches, foreign_key: 'local_id', class_name: 'Match'

end  