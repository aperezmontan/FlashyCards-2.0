class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean    :result, default: 'false'
      t.references :round
      t.references :card

      t.timestamps null: false
    end
  end
end
