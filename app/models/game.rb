class Game < ActiveRecord::Base
  belongs_to :player, class_name: User
  belongs_to :deck
  has_many	 :cards, through: :deck

  has_many   :saves
  has_many	 :saved_cards, through: :saves, source: :card

  # def draw_card
  #   self.cards.slice( rand( 0 .. self.cards.length - 1 ) )
  # end

  def cards_not_drawn
  	saved_cards = self.saved_cards
  	self.cards.reject { |card| saved_cards.include? card }
  end
end
