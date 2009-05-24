class CreateSimStaffs < ActiveRecord::Migration
  def self.up
    create_table :sim_staffs do |t|
      t.integer :simTeamId
      t.integer :realStaffId

      t.timestamps
    end
  end

  def self.down
    drop_table :sim_staffs
  end
end
