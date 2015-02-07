get '/login' do
	erb :'auth/login'
end

post '/login' do
	@user = User.find_by(name: params[:user]["name"]).try(:authenticate, params[:user]["password"])

	if @user
      session[:user_id] = @user.id
  		redirect "/users/#{@user.id}"
    else
      redirect '/login'
    end
end

get '/signup' do
	erb :signup
end

get '/logout' do
end

post '/signup' do
end

