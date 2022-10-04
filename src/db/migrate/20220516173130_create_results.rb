class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.references :match
      t.references :prediction

      t.integer :team1_goals
      t.integer :team2_goals

      t.timestamps
    end
  end
end
