class Game < ActiveRecord::Base
  has_many :players, class_name: User
  has_many :decks, :saves

  def draw_card
    self.cards.slice( rand( 0 .. self.cards.length - 1 ) )
  end
end
