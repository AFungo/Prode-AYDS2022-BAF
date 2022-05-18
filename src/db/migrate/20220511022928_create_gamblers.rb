class CreateGamblers < ActiveRecord::Migration[7.0]
  def change
    create_table :gamblers do |t|
        t.string :name
        t.string :lastname
        t.string :Email
        t.integer :Total_score
        t.references :predictions
 
        t.timestamps
    end
  end
end
