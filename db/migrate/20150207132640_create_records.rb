class CreateRecords < ActiveRecord::Migration
  def change
  	create_table :records do |t|
	  	t.references :game
	  	t.references :card
	  end
	end
end
