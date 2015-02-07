class Card < ActiveRecord::Base
  belongs_to :deck
end


# cookie[:game_deck] = deck.cards
