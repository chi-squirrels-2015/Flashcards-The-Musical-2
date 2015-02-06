class Deck < ActiveRecord::Base
  has_many :cards
  belongs_to :creator, class_name: User
end
