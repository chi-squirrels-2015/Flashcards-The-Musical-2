class Game < ActiveRecord::Base
  belongs_to :player, class_name: 'User'
  belongs_to :deck
  has_many	 :cards, through: :deck

  has_many   :records
  has_many	 :recorded_cards, through: :records, source: :card

  # def draw_card
  #   self.cards.slice( rand( 0 .. self.cards.length - 1 ) )
  # end

  def cards_not_drawn
  	current_record = self.recorded_cards
  	self.cards.reject { |card| current_record.include? card }
  end

  def ready_for_new_game?
    self.cards_not_drawn.length == 0
  end
end
