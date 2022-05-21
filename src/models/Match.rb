require 'active_record'
require 'date'
class Match < ActiveRecord::Base
    belongs_to :local, class_name: 'Team'
    belongs_to :visitor, class_name: 'Team'
    enum round: [:groupA, :groupB, :groupC, :groupD, :groupE, :groupF, :groupG, :groupH, :round16, :round8, :quarter, :semi, :thirdQuarter, :final]
    validates :local, presence: true
    validates :visitor, presence: true
    validates :round, presence: true
    def check_prop
        local!=visitor
    end
    
end