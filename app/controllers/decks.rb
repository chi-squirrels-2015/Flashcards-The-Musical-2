get '/decks/new' do
  erb :"decks/new"
end

post '/decks' do
  new_deck = Deck.create(deck_name: params[:deck_name],
                         description: params[:description],
                         creator_id: params[:user_id])
#Creator_id is gonna have be implemented once we get authentication up and working
  redirect "/"
end
