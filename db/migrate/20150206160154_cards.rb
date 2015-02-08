class Cards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string     :content
      t.string     :solution
      t.references :deck

      t.timestamps
    end
  end
end
