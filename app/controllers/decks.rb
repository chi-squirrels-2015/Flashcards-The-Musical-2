get '/decks/new' do
  erb :"decks/new"
end

post '/decks' do
  new_deck = Deck.create(deck_name: params[:deck_name],
                         description: params[:description],
                         creator_id: params[:user_id])
#Creator_id is gonna have be implemented once we get authentication up and working
  redirect "decks/#{new_deck.id}/cards/new"
end

get '/decks/:deck_id/cards/:id' do
  @deck = Deck.find(params[:deck_id])
  @card = @deck.cards.sample

  erb :'/cards/show'
end

post '/decks/:deck_id/cards/:id' do
  answer = Card.find(params[:id]).solution
  @deck  = Deck.find(params[:deck_id])

  if params[:answer] == answer
    Card.find(params[:id]).destroy
  end

  @card = @deck.cards.sample
  redirect "/decks/#{@deck.id}/cards/#{@card.id}"
end
