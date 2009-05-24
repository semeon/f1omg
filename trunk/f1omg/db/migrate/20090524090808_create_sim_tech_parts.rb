class CreateSimTechParts < ActiveRecord::Migration
  def self.up
    create_table :sim_tech_parts do |t|
      t.integer :simTeamId
      t.integer :realTechPartId

      t.timestamps
    end
  end

  def self.down
    drop_table :sim_tech_parts
  end
end
