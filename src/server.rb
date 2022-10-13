# frozen_string_literal: true

require 'bundler/setup'
require 'sinatra/base'
require 'sinatra/flash'

require 'sinatra/reloader' if Sinatra::Base.environment == :development

require 'sinatra/activerecord'

require 'logger'

require_relative 'models/init'

# Clase principal que maneja los accesos a cada una de las rutas.
class App < Sinatra::Application
  before do
    if session[:gambler_id]
      admin = Gambler.find_by(id: session[:gambler_id]).Admin
      @current_user = Gambler.find_by(id: session[:gambler_id])
      admin_pages = ['/addResult', '/addMatch', '/addTeam', '/admin']

      redirect '/matches' if !admin && admin_pages.include?(request.path_info)

    else
      public_pages = ['/', '/login', '/signup'] # sacar admin

      redirect '/login' unless public_pages.include?(request.path_info)
    end
  end

  configure :development do
    set :sessions, true
    set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
    set :views, File.expand_path('views', __dir__)
    set :public_folder, 'public'
    register Sinatra::Reloader
    after_reload do
      puts 'Reloaded...'
    end
    enable :logging
    enable :sessions

    logger = Logger.new($stdout)
    logger.level = Logger::DEBUG if development?
    set :logger, logger
  end

  def initialize(_app = nil)
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
    t1.name = 'Irlana'
    t2 = Team.new
    t2.name = 'Gales'
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
    # r1.save
    'Aguante boca'
  end

  get '/' do
    @log = !session[:gambler_id].nil?
    erb :index
  end

  get '/login' do
    redirect '/' unless session[:gambler_id].nil?
    erb :login, layout: :layout
  end

  post '/login' do
    json = request.params
    logger.info json
    user = Gambler.find_by(name: json['username'])
    logger.info 'string'
    logger.info user.inspect
    if user && user.password == json['password']
      session[:gambler_id] = user.id
      flash[:notice] = 'Bienvenido.'
      redirect to '/'
    else
      flash[:alert] = 'Contraseña o usuario incorrectos.'
      redirect to :login
    end
  end

  get '/signup' do
    redirect '/' unless session[:gambler_id].nil?
    erb :signup
  end

  post '/signup' do
    json = request.params
    if json['password'] == json['repeatpassword']
      g1 = Gambler.new
      g1.name = json['username']
      g1.password = (json['password'])
      g1.Email = json['email']
      g1.Statistical_data = 0.0
      g1.Total_score = 0
      g1.save
      flash[:notice] = 'Gracias por registrarte!!!'
      redirect to '/login'
    else
      flash[:alert] = 'Las contraseñas no coinciden'
      redirect to '/signup'
    end
  end

  get '/logout' do
    logger.info session[:gambler_id]
    session.clear
    logger.info session[:gambler_id]
    flash[:notice] = 'Hasta luego.'
    redirect to '/'
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
    param = json['p']
    size = param.size
    cant = gambler.prediction.size
    (0..size - 1).each do |index|
      logger.info size
      next unless json['p'][index]['team1_goals'] != '' && json['p'][index]['team2_goals'] != ''

      prediction = Prediction.new(match_id: json['p'][index]['id'].to_i, team1_goals: json['p'][index]['team1_goals'],
                                  team2_goals: json['p'][index]['team2_goals'])
      prediction.gambler = gambler
      logger.info prediction
      gambler.prediction << prediction
      prediction.save
      gambler.save
    end
    if cant == gambler.prediction.size
      flash[:alert] = 'No se realizo ninguna prediccion.'
    else
      cant_pred = gambler.prediction.size - cant
      flash[:notice] = "Se realizaron #{cant_pred} predicciones"
    end
    redirect to '/score'
  end

  get '/addResult' do
    @partidos = Match.all
    @resultados = Result.all
    erb :addResult
  end

  get '/addMatch' do
    @teams = Team.all
    erb :addMatch
  end

  get '/addTeam' do
    erb :addTeam
  end

  get '/editUser' do
    erb :editUser, layout: :layout
  end

  post '/editUser' do
    gambler = @current_user
    json = request.params
    logger.info json
    logger.info gambler
    if BCrypt::Password.new(gambler.password) == json['currentPassword']
      if json['newPassword'] == json['newPasswordTwo']
        gambler.password = (json['newPassword'])
        gambler.save
        session.clear
        flash[:notice] = 'Contraseña cambiada con exito.'
        redirect to '/'
      else
        flash[:alert] = 'Las contraseñas no coinciden.'
        redirect to '/editUser'
      end
    else
      flash[:alert] = 'Contraseña Incorrecta'
      redirect to '/editUser'
    end
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
    param = json['p']
    size = param.size
    (0..size - 1).each do |index|
      logger.info json['p'][index]['id']
      result = Result.new(match_id: json['p'][index]['id'].to_i, team1_goals: json['p'][index]['team1_goals'],
                          team2_goals: json['p'][index]['team2_goals'])
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
    @gamblers.each do |g|
      g.statistics
      g.save
    end
    erb :score
  end

  get '/results' do
    @results = Result.all
    erb :results
  end

  get '/predictions' do
    @predictions = Prediction.where(gambler_id: session[:gambler_id])
    logger.info @predictions
    erb :predictions
  end
end
