get '/users' do
end

get '/users/new' do
  erb :"users/new"
end

post '/users' do
  redirect "/users"
end

get '/users/:id' do
  erb :"users/show"
end
