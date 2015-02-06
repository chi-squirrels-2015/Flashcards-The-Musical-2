class Cards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :content, :solution

      t.timestamps
    end
  end
end
