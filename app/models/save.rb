class Save < ActiveRecord::Base
  belongs_to :game
  belongs_to :card

  # belongs_to :deck, through: :game
end
