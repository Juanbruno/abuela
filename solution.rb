
require 'sinatra'

get '/' do
  @abuela = params[:abuela]
  
  erb :index
end

post '/abuela' do
  if params[:input_usuario] == params[:input_usuario].upcase
    @abuela = "manzana"
  else
    @abuela = "Habla mas duro mijito"
  end
  redirect "/?abuela=#{@abuela}"
end

