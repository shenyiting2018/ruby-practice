require 'sinatra'

get '/hello' do
	"<h1>this is my first sinatra web app</h1>"
end

get '/' do
	"<h1>welcom to my website</h1>"
end

get '/love' do
	%{
		<html>
		<body>
		<div style="text-align: center">

		</div>
		</body>
		</html>
	}
end

get '/new' do
	"this is a new route hander"
end

not_found do
	"<h1>i don't know what you want to do</h1>"
end

get '/love/:name' do
	"<h1>i love my new #{params[:name]}</h1>"
end

#get 'login' do


post '/login' do
	"<h1>userid is: #{params[:username]}, password is: #{params[:password]}</h1>"
end

get '/logout' do
	redirect '/login'
end

get '/google' do
	redirect 'http://www.google.com'
end

get '/guess/:who' do
	pass unless params[:who] == 'frank'
	"<h1>You guessed right</h1>"
end

get '/guess/*' do
	"<h1>wrong guess</h1>"
end

get 'bet/:stake/on/:number' do
	stake = params[:stake]
	number = params[:number].to_i
	roll = rand(6) + 1
	if number == roll
		"<h1>This dice landed on #{roll}, you win #{10 * stake} dollars</h1>"
	else
		"<h1>This dice landed on #{rool}, you lost #{stake} dollars</h1>"
	end
end
