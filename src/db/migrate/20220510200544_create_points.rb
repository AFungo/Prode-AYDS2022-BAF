class CreatePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :points do |t|
      t.references :prediction
      t.references :result
      t.integer :total_points

      t.timestamps
  
    end
  end
end

