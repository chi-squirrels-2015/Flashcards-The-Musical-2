class Deck < ActiveRecord::Base
  has_many :cards
  belongs_to :creator, class_name: User



  def draw_card
    self.cards.slice( rand( 0 .. self.cards.length - 1 ) )
  end
end
