# frozen_string_literal: true

# Create predictions table
class CreatePrediction < ActiveRecord::Migration[7.0]
  def change
    create_table :predictions do |t|
      t.references :gambler
      t.references :match
      t.integer :team1_goals
      t.integer :team2_goals

      t.timestamps
    end
    add_index :predictions, %i[gambler match]
  end
end
