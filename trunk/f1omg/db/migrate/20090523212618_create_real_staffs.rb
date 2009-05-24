class CreateRealStaffs < ActiveRecord::Migration
  def self.up
    create_table :real_staffs do |t|
      t.integer :positionId
      t.integer :realTeamId
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :real_staffs
  end
end
