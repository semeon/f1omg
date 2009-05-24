class CreateRealTechParts < ActiveRecord::Migration
  def self.up
    create_table :real_tech_parts do |t|
      t.integer :partTypeId
      t.integer :realTeamId
      t.string :name
      t.integer :cost

      t.timestamps
    end
  end

  def self.down
    drop_table :real_tech_parts
  end
end
