class AddStaffCost < ActiveRecord::Migration
    def self.up
        add_column :real_staffs, :cost, :integer
    end
    def self.down
        remove_column :real_staffs, :cost
    end
end