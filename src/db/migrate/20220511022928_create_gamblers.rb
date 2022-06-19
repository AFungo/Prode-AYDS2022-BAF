class CreateGamblers < ActiveRecord::Migration[7.0]
  def change
    create_table :gamblers do |t|
        t.string :name
        t.string :lastname
        t.string :Email
        t.integer :Total_score, default: 0
        t.references :predictions
        t.boolean :Admin, default: false
 
        t.timestamps
    end
  end
end
