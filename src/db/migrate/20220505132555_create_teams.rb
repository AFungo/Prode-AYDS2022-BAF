class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.timestamps
    end
  end
end

#t.references :local fk
#t.rederences :visitor fk
# belongs_to :local , class_name : 'Team'