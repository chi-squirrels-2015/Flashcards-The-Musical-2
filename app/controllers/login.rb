get '/login' do
	erb :'auth/login'
end

post '/login' do
	name     = params[:user]["name"]
	password = params[:user]["password"]
	user     = User.find_by(name: name).try(:authenticate, password)

	redirect "/users/#{user.id}"
end

get '/signup' do
end

get '/logout' do
end

post '/signup' do
end

