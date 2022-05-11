class CreateMatches < ActiveRecord::Migration[7.0]

  def change 
    create_table :matches do |t|
      t.references :firstTeam, index: true, foreign_key: { to_table: :teams }
      t.references :secoundTeam, index: true, foreign_key: { to_table: :teams }
      t.string :date
      t.string :hour
      t.string :round
      
      t.timestamps
    end
  end

end
