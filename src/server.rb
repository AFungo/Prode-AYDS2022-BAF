require 'bundler/setup'
require 'sinatra/base'

require 'sinatra/reloader' if Sinatra::Base.environment == :development  

require "sinatra/activerecord"

require 'logger'

require_relative 'models/init'

class App < Sinatra::Application

  before do
    if session[:gambler_id]
      @current_user = Gambler.find_by(id: session[:gambler_id])
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


  get '/matches' do
    
    @partidos = Match.all
    erb :matches        
  end

  get '/prueba' do
       g1 = @current_user
       if g1.prediction.size == 4
        "boca"
       else
        g1.prediction.first.match
       end
  end


  get '/' do
    @equipos = Team.all
    erb :index
  end

  get '/login' do
    if !!session[:gambler_id]
      redirect "/"
    end
    erb :login
  end

  post '/login' do
    json = request.params 
    logger.info json
    user = Gambler.find_by(name: json['username'])
    logger.info 'string'
    logger.info user.inspect
    if user && user.password == json['password']
      session[:gambler_id] = user.id
      redirect to "/matches"
    else
      redirect to "/login"
    end
  end

  get '/signup' do
    if !!session[:gambler_id]
      redirect "/"
    end
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

  get '/logout' do
    session.clear
    redirect to "/"
  end

  get '/addPrediction' do
    @equipos = Team.all
    erb :addPrediction
  end

  post '/addPrediction' do
    g1 = @current_user
    json = request.params
    p1 = Prediction.new
    m1 = Match.new
    t1= Team.new
    t2 = Team.new
    t1.name = json['team1']
    t2.name = json['team2']
    m1.local = t1
    m1.visitor = t2
    p1.match = m1
    p1.gambler = g1
    p1.team1_goals = json['team1_goals']
    p1.team2_goals = json['team2_goals']
    g1.prediction << p1
    p1.save
    g1.save
    redirect to "/matches"
  end
end
