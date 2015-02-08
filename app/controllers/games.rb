get '/games/:game_id/decks/:deck_id/cards/:id' do
	p @game = Game.create(deck_id: params[:deck_id], player_id: @current_user.id)

  p @card = @game.cards_not_drawn.sample

  erb :'/cards/show'
end

post '/games/:game_id/decks/:deck_id/cards/:id' do
	card     = Card.find(params[:id])
  solution = card.solution

  if params[:guess].chomp == solution
    Save.create(game_id: @game.id, card_id: card.id)
  end

  redirect "/games/#{@game.id}/decks/#{params[:deck_id]}/cards/#{card.id}"
end

# rout create game if it dosent exist
# find by or create
