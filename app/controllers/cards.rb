# get 'decks/:deck_id/cards/new' do
#   erb :"cards/new"
# end

post 'decks/:deck_id/cards' do
  puts "Works?"
end

get '/cards/:id' do
	@card = Card.find(params[:id])
  erb :"cards/show"
end

