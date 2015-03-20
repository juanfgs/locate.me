require 'sinatra'
require './app/models/status.rb'

set :public_folder, './static/'

get '/' do
  @statuses = Status.all()

  erb :index
end

get '/acquire' do

  erb :acquire
end

post '/acquire' do
  Status.create( {:latitude => params[:latitude], :longitude => params[:longitude]} )
end
 

