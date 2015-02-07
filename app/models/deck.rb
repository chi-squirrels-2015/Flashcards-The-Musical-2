class Deck < ActiveRecord::Base
  has_many :cards
  has_many :games
  has_many :creators, through: :games, class_name: User
  has_many :
end
