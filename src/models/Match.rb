class Match < ActiveRecord::Migration[7.0]

    def change 
        create_table :matchs do |t|
            t.string :Date
            t.string :Hour
            t.string :Round
        end
    end
end



