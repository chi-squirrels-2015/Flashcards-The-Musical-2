get '/' do
  @decks = Deck.all
  p @decks
  erb :index
end
