class CreateGambler < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
        t.string :name
        t.string :lastname
        t.string :Email
        t.integer :Total_score
  end
end