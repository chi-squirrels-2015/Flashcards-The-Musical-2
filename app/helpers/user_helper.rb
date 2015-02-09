def current_user
	@current_user = User.find(session[:user_id]) if session[:user_id]
end

def avaiable_decks
	Deck.all
end

def played_deck?(deck)
	current_user.played_decks.include?(deck)
end
