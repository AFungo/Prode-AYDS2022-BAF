require 'bundler/setup'
require 'sinatra/base'

require 'sinatra/reloader' if Sinatra::Base.environment == :development  

require "sinatra/activerecord"

require 'logger'

require_relative 'models/init'

class App < Sinatra::Application

  before do
    if session[:gambler_id]
      @current_user = Gambler.find_by(id: session[:user_id])
    else
      public_pages = ["/", "/login",'/signup']
      if !public_pages.include?(request.path_info)
        redirect '/login'
      end
    end
  end
    
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

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    g1 = Gambler.new
    json = request.params
    if json['password'] == json['repeatpassword']
       g1 = Gambler.new
       g1.name = json['username']
       g1.lastname = json['lastname']
       g1.password=(json['password'])
       g1.Email = json['email']
       g1.Total_score = 0
       g1.save
       redirect to "/login"
    end
    redirect to "/signup"
  end

end
