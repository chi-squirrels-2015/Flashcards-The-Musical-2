get '/decks/:deck_id/cards/new' do

  erb :"cards/new"
end

post '/decks/:deck_id/cards' do
  puts "Works?"
end

get '/decks/:deck_id/cards/:id' do
  erb :"cards/show"
end

