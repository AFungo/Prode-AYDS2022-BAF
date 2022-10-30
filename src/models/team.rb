# frozen_string_literal: true

require 'active_record'

class Team < ActiveRecord::Base
  # Un equipo está relacionado con muchos partidos
  has_many :matches, foreign_key: 'local_id', class_name: 'Match'
  validates :name, uniqueness: true
  validates :name, presence: true

  def get_matches_played
    local_match = Match.where(local_id: self.id)
    local_match = Result.where(match: local_match)
    visitor_match = Match.where(visitor_id: self.id)
    visitor_match = Result.where(match: visitor_match)
    visitor_match += local_match  
  end

  def played
    matches = get_matches_played
    matches.count
  end
  
  def wins
    match = get_matches_played
    count = 0
    
    match.each do |l|
      if l.winner == self
        count += 1
      end        
    end
    count
  end

  def lose
    match = get_matches_played
    count = 0
    
    match.each do |l|
      if l.winner != nil && l.winner != self
        count += 1
      end        
    end
    count
  end

  def draws
    match = get_matches_played
    count = 0
    
    match.each do |l|
      if l.winner == nil
        count += 1
      end        
    end
    count
  end

  def win_rate

    matches_played = get_matches_played.count
    matches_wins = wins
    if matches_played != 0
      matches_wins*100/matches_played
    end
  end
end
