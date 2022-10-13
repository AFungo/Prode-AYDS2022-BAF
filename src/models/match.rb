# frozen_string_literal: true

require 'active_record'
require 'date'
# Clase que representa cada uno de los partidos.
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
  def eqround(other)
    (other.round == round)
  end

  def eqteams(other)
    ((other.local == local || other.local == visitor) && (other.visitor == visitor || other.visitor == local))
  end

  def equals(other)
    (this.eqteams(other) && this.eqround(other))
  end
end
