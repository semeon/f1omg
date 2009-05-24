class CreateStaffPositions < ActiveRecord::Migration
  def self.up
    create_table :staff_positions do |t|
      t.string :id
      t.string :title
      t.integer :importance

      t.timestamps
    end
  end

  def self.down
    drop_table :staff_positions
  end
end
