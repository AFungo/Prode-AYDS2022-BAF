require 'active_record'

class Team < ActiveRecord::Base
    has_many  :matches, foreign_key: 'local_id', class_name: 'Match'

end  