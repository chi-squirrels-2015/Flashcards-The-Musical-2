file_path = 'db/state_data.txt'

File.open( file_path ).each do |line|
  entry = line.chomp.split(', ')
  Card.create!( content: entry[0], solution: entry[1], deck_id: 1 )
end

Deck.create!( deck_name: "Name All 50 State Capitals USA Edt.", description: "Eliott's Favorite Game in the whole wide world, maybe?", creator_id: 1 )

