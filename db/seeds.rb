User.create(name:"Matthew",password:"123",password_confirmation:'123')

Deck.create!( deck_name: "Name All 50 State Capitals USA Edt.", description: "Eliott's Favorite Game in the whole wide world, maybe?", creator_id: 1 )
Deck.create!( deck_name: "Heejin is so Cool!", description: "That is what I said!", creator_id: 4 )

file_path = 'db/state_data.txt'

File.open( file_path ).each do |line|
  entry = line.chomp.split(', ')
  Card.create!( content: entry[0], solution: entry[1], deck_id: 1 )
end

Card.create!( content: "Heejin", solution: "1", deck_id: 2 )

Game.create(player_id: 1, deck_id: 1)

40.times { Record.create(game_id: 1, card_id: rand(1..50)) }
