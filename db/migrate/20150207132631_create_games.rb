class CreateGames < ActiveRecord::Migration
  def change
  	create_table :games do |t|
  		t.references :player
  		t.references :deck
  	end
  end
end
