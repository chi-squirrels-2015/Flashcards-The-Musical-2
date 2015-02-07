class User < ActiveRecord::Base
  has_secure_password
  has_many :games
	has_many :decks, through: :games
  has_many :saves, through: :games
end
