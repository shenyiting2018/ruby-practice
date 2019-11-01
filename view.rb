require 'sinatra'

get '/' do 
	@title = "home"
	erb :home	#filter the view "home" and return the result to browser
end

get '/about' do 
	@title = "about"
	erb :about  #, :layout=> :aboutlayout do
end

get'/contact' do
	@title = "contact"
	erb :contact
end

not_found do
	@title = "not found"
	erb :notfound
end