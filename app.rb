require 'sinatra'

get '/' do
	erb:index	
end

post '/player_names' do
	player1 = params[:player1]
	player2 = params[:player2]
	"player 1 is #{player1} and player 2 is #{player2}"
	redirect '/password?player1='+ player1 + '&player2=' + player2
end

get '/password' do
	player1 = params[:player1]
	player2 = params[:player2]
	erb :password, locals:{p1_name: player1, p2_name: player2}
end

get '/secretword' do
	password = params[:password]
	player1 = params[:player1]
	player2 = params[:player2]
	# "player 1 is #{player1} and player 2 is #{player2} and secret word is #{:password}"
	redirect '/guessing?player1='+ player1 + '&player2=' + player2
	end
get '/guessing'do
	player1 = params[:player1]
	player2 = params[:player2]
	erb :guessing, locals:{p1_name: player1, p2_name: player2, blank: session[:game].blank}
end

post '/guess'do
	player1 = params[:player1]
	end
