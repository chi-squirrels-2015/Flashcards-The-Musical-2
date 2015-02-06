class CardInDecks < ActiveRecord::Migration
  def change
    create_table :card_in_decks do |t|
      t.integer :deck_id, :card_id

      t.timestamps
    end
  end
end
