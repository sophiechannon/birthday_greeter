require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bday_calc.rb'
require_relative './lib/user.rb'

class BirthdayApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb (:index)
  end

  post '/user_info' do
    user = User.new(params[:name], params[:day], params[:month])
    $bday_calc = BdayCalc.new(user)
    redirect '/message'
  end

  get '/message' do
    @bday_calc = $bday_calc
    erb (@bday_calc.result)
  end

  run! if app_file == $0
end