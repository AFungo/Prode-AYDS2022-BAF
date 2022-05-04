require 'bundler/setup'
require 'sinatra/base'

require 'sinatra/reloader' if Sinatra::Base.environment == :development  

require "sinatra/activerecord"

class App < Sinatra::Application
  configure :development do
    register Sinatra::Reloader
    after_reload do
      puts 'Reloaded...'
    end
  end

  def initialize(app = nil)
    super()
  end

  get '/' do
    'Aguante boca!!!'
  end
end
