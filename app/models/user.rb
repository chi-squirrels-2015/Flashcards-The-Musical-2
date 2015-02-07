class User < ActiveRecord::Base
  has_secure_password
  has_many :decks, :games
  has_many :saves, through: :games 
end
