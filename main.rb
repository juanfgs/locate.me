require 'sinatra'
require './app/models/status.rb'

get '/' do
  @statuses = Status.all()

  erb :index
end

get '/acquire' do

  erb :acquire
end

post '/acquire' do
  Status.create( {:latlon => params[:latitude] + "," + params[:longitude]} )
end
  

