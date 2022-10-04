require 'active_record'
require 'date'
class Match < ActiveRecord::Base
  belongs_to :local, class_name: 'Team'
  belongs_to :visitor, class_name: 'Team'
  enum round: %i[groupA groupB groupC groupD groupE groupF groupG groupH round8 quarter semi thirdQuarter final]
  validates :local, presence: true
  validates :visitor, presence: true
  validates :round, presence: true
  validates :round, uniqueness: { scope: %i[local_id visitor_id], message: 'Once match with same teams per round' }
  def check_prop
    local != visitor
  end

  # Dice si dos partidos son iguales.
  # Dos partidos son iguales si juegan los mismo equipos en la misma ronda
  def equals(other)
    ((other.local == local || other.local == visitor) && (other.visitor == visitor || other.visitor == local) && (other.round == round))
  end
end
