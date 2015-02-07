get '/decks/new' do
  erb :"decks/new"
end

post '/decks' do
  new_deck = @Deck.new(deck_name: params[:deck_name],
                       description: params[:description],
                       creator_id: params[:user_id])

  if new_deck.save
    redirect "decks/:id/cards/new"
  else
    @message = "A Deck by that name already exists"
    redirect "/decks/new"
  end
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
