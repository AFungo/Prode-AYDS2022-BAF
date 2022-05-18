

require 'bundler/setup'
require 'sinatra/base'

require 'sinatra/reloader' if Sinatra::Base.environment == :development  

require "sinatra/activerecord"

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
  end

  def initialize(app = nil)
    super()
  end


  team = Team.new
    team.name = "Argentina"
    team2 = Team.new
    team2.name = "Nigeria"
    m1 = Match.new
    m1.local = team
    m1.visitor = team2 

    g1 = Gambler.new
    g1.name = "Jorge"
    g1.lastname = "George"
    team.save
    team2.save
  
  get '/' do
    @equipos = Team.all
    erb :index
  end

  get '/login' do
    erb :login
  end

  post '/login' do
    json = JSON.parse(request.body.read.to_json)
    user = Gambler.find_by(name: json['name'])
    if user && user.password == json['password']
      session[:user_id] = user.id
      redirect to "/"
    else
      redirect to "/login"
    end
  end


end







