class Decks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :deck_name, :description
      t.integer :creator_id

      t.timestamps
    end
  end
end









