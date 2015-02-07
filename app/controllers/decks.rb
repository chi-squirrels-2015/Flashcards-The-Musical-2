get '/decks/:deck_id/cards/:id' do
  @deck = Deck.find(params[:deck_id])
  @card = @deck.draw_card
  
  erb :'/cards/show'
end

post '/decks/:deck_id/cards/:id' do
  answer = Card.find(params[:id]).solution
  @deck  = Deck.find(params[:deck_id])
  
  if params[:answer] == answer
    Card.find(params[:id]).destroy
  end

  @card = @deck.draw_card
  redirect "/decks/#{@deck.id}/cards/#{@card.id}"
end
