class Deck < ActiveRecord::Base
  has_many :card_in_decks
  has_many :cards, through: :card_in_decks
  belongs_to :creator, class_name: User
end
