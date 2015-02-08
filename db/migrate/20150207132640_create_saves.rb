class CreateSaves < ActiveRecord::Migration
  def change
  	create_table :saves do |t|
	  	t.references :game
	  	t.references :card
	  end
	end
end
