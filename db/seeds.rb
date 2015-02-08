User.create(name:"Matthew",password:"123",password_confirmation:'123')

Deck.create!( deck_name: "Name All 50 State Capitals USA Edt.", description: "Eliott's Favorite Game in the whole wide world, maybe?", creator_id: 1 )

file_path = 'db/state_data.txt'

File.open( file_path ).each do |line|
  entry = line.chomp.split(', ')
  Card.create!( content: entry[0], solution: entry[1], deck_id: 1 )
end

Game.create(player_id: 1, deck_id: 1)

40.times { Save.create(game_id: 1, card_id: rand(1..50)) }
