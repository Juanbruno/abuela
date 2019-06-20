require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :index
end

post '/' do
	if params[:texto] == params[:texto].upcase
		<<-HTML
			<h1> Ahhh si, manzanas! </h1>
		HTML
	else
		"<h1> Habla más duro mijito </h1>"
	end
end