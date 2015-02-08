get '/' do
  @decks = Deck.all
  @game = Game.last
  @card = Card.first
  p @decks
  erb :index
end
