class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :password

      t.timestamps
    end
  end
end
