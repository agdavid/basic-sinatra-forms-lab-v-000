require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    "Hello, this is the index."
  end

  get '/newteam' do
    erb :team
  end

  post '/team' do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]

    erb :newteam
  end


end
