require 'sinatra'
require 'rubygems'

get '/' do
	erb :sayIt
end

get '/answer' do 
	said = params[:say]
	@str = ""
	if said.match(said.upcase) == nil 
		@str = "Habla mas duro mijito"
	else
		@str = "Ahhh si, manzanas!"
	end
	erb :answer
end
