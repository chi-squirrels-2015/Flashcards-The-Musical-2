get '/users' do
  User.all
end

post '/users' do
  redirect "/users"
end

get '/users/:id' do
  erb :"users/show"
end

# get '/users/login' do
#   erb :"users/login"
# end
