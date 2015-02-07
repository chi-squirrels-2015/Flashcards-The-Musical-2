get '/login' do
	erb :'auth/login'
end

post '/login' do
	user = User.find_by(params[:name]).try(:authenticate, params[:password])

	redirect "/users/#{user.id}"
end

get '/signup' do
end

get '/logout' do
end

post '/signup' do
end

