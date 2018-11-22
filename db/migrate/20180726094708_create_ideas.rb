class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :subtitle
      t.string :vote
      t.integer :cap
      t.string :number

      t.timestamps null: false
    end
  end
end
