class CreateTechPartTypes < ActiveRecord::Migration
  def self.up
    create_table :tech_part_types do |t|
      t.string :title
      t.integer :importance

      t.timestamps
    end
  end

  def self.down
    drop_table :tech_part_types
  end
end
