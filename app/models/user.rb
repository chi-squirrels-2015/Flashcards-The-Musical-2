class User < ActiveRecord::Base
  has_secure_password
  has_many :decks
  
  belongs_to :game
  has_many :saves, through: :game
end
