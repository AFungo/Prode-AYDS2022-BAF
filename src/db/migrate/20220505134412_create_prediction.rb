class AddPrediction < ActiveRecord::Migration[7.0]
  def change
    create_table :predictions do |t|
      t.references :match

      t.integer :Team1_goals
      t.integer :Team2_goals

      t.timestamps
    end
  end
end
