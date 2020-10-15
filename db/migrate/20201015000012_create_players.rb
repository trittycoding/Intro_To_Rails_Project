class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.decimal :forty
      t.decimal :vertical
      t.integer :benchreps
      t.decimal :broadjump
      t.decimal :cone
      t.decimal :shuttle
      t.integer :draftyear
      t.string :draftedby
      t.integer :round
      t.integer :pick
      t.string :playerposition
      t.references :team, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
