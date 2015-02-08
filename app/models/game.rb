class Game < ActiveRecord::Base
  belongs_to :player, class_name: User
  belongs_to :deck
  has_many   :saves

  def draw_card
    self.cards.slice( rand( 0 .. self.cards.length - 1 ) )
  end
end
