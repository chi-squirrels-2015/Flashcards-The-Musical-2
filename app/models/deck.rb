class Deck < ActiveRecord::Base
  has_many :cards
  has_many :games
  belongs_to :creator, class_name: "User"

  # def self.draw_card
  #   self.cards.slice(rand(0..self.cards.length - 1))
  # end
end
