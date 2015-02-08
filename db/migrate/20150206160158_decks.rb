class Decks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string     :deck_name, :description
      t.references :creator

      t.timestamps
    end
  end
end









