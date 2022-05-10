class AddMatches < ActiveRecord::Migration[7.0]

  def change 
    create_table :matches do |t|
      t.string :date
      t.string :hour
      t.string :round
      
      t.timestamps
    end
  end

end
