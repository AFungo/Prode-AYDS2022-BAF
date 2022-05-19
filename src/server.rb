require 'bundler/setup'
require 'sinatra/base'

require 'sinatra/reloader' if Sinatra::Base.environment == :development  

require "sinatra/activerecord"

require 'logger'

require_relative 'models/init'

class App < Sinatra::Application

  
  
  configure :development do
    set :sessions, true
    set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
    set :views          , File.expand_path('../views', __FILE__)
    register Sinatra::Reloader
    after_reload do
      puts 'Reloaded...'
    end
    enable :logging
  
    logger = Logger.new(STDOUT)
    logger.level = Logger::DEBUG if development?
    set :logger, logger

  end

  def initialize(app = nil)
    super()
  end


    
    if !(Team.find_by(name: "Argentina") && Team.find_by(name:"Nigeria"))
      team = Team.new

      team.name = "Argentina"
      team2 = Team.new
      team2.name = "Nigeria"
      m1 = Match.new
      m1.local = team
      m1.visitor = team2 
      team.save
      team2.save

    end
  get '/' do
    @equipos = Team.all
    erb :index
  end

  get '/login' do
    erb :login
  end

  post '/login' do
    json = request.params 
    logger.info json
    user = Gambler.find_by(name: json['username'])
    logger.info 'string'
    logger.info user.inspect
    if user && user.password == json['password']
      session[:user_id] = user.id
      redirect to "/"
    else
      redirect to "/login"
    end
  end
end