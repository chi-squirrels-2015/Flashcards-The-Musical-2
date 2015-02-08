class User < ActiveRecord::Base
  has_secure_password
  has_many :games, foreign_key: :player_id
	has_many :played_decks, through: :games, source: :deck
	
	has_many :decks, foreign_key: :creator_id
end
