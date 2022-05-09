class CreatePrediction < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.references :match

      t.integer :Team1_goals
      t.integer :Team2_goals

      t.timestamps
    end
  end
end
