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
      public_pages = ["/", "/login",'/signup',"/admin"]#sacar admin
      if !public_pages.include?(request.path_info)
        redirect '/login'
      end
    end
  end

  configure :development do
    set :sessions, true
    set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
    set :views          , File.expand_path('../views', __FILE__)
    set :public_folder, 'public'
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
  
  get '/admin' do
    erb :admin
  end
  
  get '/prueba' do
    t1 = Team.new
    t1.name = "Irlana"
    t2 = Team.new
    t2.name = "Gales"
    t1.save
    t2.save
    m1 = Match.new
    m1.local = t1
    m1.visitor = t2
    m1.round = 1
    m1.save
    r1 = Result.new
    r1.match = m1
    r1.team1_goals = 3
    r1.team2_goals = 4
    #r1.save
    "Aguante boca"
  end


  get '/' do
    @log = !!session[:gambler_id]
    erb :index
  end

  get '/login' do
    if !!session[:gambler_id]
      redirect "/"
    end
    erb :login, :layout => :layout
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
    @resultado = Result.all
    @user = @current_user
    @partidos = Match.all
    erb :addPrediction
  end

  post '/addPrediction' do
    gambler = @current_user
    json = request.params
    for index in 0..json.size do
      logger.info json['p'][index]['id']
      prediction = Prediction.new(match_id: json['p'][index]['id'].to_i, team1_goals: json['p'][index]['team1_goals'], team2_goals: json['p'][index]['team2_goals'])
      gambler.prediction << prediction
      prediction.save
      gambler.save  
    end
    redirect to "/score"
  end

  get '/addResult' do
    @partidos = Match.all
    @resultados = Result.all
    erb :addResult
  end

  get '/addMatch' do
    erb :addMatch
  end

  get '/addTeam' do
    erb :addTeam
  end

  post '/addTeam' do 
    json = request.params
    t1 = Team.new
    t1.name = json['Team_name']
    t1.save
    redirect to '/admin'
  end

  post '/addMatch' do
    json = request.params
    t1 = Team.find_by(name: json['Team1_name'])
    t2 = Team.find_by(name: json['Team2_name'])
    logger.info t1
    m1 = Match.new
    m1.local_id = t1.id
    m1.visitor_id = t2.id
    m1.datetime = json['date']
    r = json['round']
    m1.round = r.to_i
    m1.save
    redirect to '/admin'
  end
  
  post '/addResult' do
    json = request.params
    for index in 0..json.size do
      logger.info json['p'][index]['id']
      result = Result.new(match_id: json['p'][index]['id'].to_i, team1_goals: json['p'][index]['team1_goals'], team2_goals: json['p'][index]['team2_goals'])
      result.save
      result.change_score  
    end
    redirect to '/admin'
  end

  post '/redirectAddTeam' do
    redirect to '/addTeam'
  end
  post '/redirectAddMatch' do
    redirect to '/addMatch'
  end
  post '/redirectAddResult' do
    redirect to '/addResult'
  end

  get '/score' do
    @gamblers = Gambler.order(Total_score: :desc)
    erb :score
  end

end
