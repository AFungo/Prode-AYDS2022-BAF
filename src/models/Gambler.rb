require 'active_record'
require 'bcrypt'

class Gambler < ActiveRecord::Base
	include BCrypt
	has_many :prediction
  validates  :name, presence: true
  validates :lastname, presence: true
  validates :Email, presence: true
  validates :Email, uniqueness: true
  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

  def create_prediction=(match,t1Goals,t2Goals)
    Prediction.new(team1_goals: t1Goals, team2_goals: t2Goals, match: match, gambler: self) 
  end

  end






