get '/games/:game_id/cards/:id' do
	p @game = Game.create(deck_id: params[:deck_id], player_id: @current_user.id)

  p @card = @game.cards_not_drawn.sample

  erb :'/cards/show'
end

post '/games/:game_id/cards/:id' do
	card     = Card.find(params[:id])
  @game = Game.find(params[:game_id])
  solution = card.solution

  if params[:guess].chomp == solution
    Record.create(game_id: @game.id, card_id: card.id)
  end

  redirect "/games/#{@game.id}"
end

post '/games/create' do
	deck = Deck.find_by(id: params[:deck_id])
  game = Game.create(deck: deck, player: current_user)


  redirect "/games/#{game.id}"
end

get '/games/:id' do
  p @game  = Game.find(params[:id])
  p deck  = @game.deck
  p @card = deck.cards.sample

  if @card.nil?
    erb :complete 
  else
    erb :"cards/show"
  end
end


# rout create game if it dosent exist
# find by or create
