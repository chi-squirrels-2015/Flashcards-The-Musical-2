class Card < ActiveRecord::Base
  has_many :card_in_decks
  has_many :decks, through: :card_in_decks
end
