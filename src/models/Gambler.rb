require 'active_record'
require 'bcrypt'

class Gambler < ActiveRecord::Base
	include BCrypt
	has_many :prediction
  
  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

end






