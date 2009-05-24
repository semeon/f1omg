class CorrectColumnNames < ActiveRecord::Migration
    def self.up
        rename_column :real_staffs, :positionId, :staff_position_id
        rename_column :real_staffs, :realTeamId, :real_team_id

        rename_column :real_tech_parts, :partTypeId, :tech_part_type_id
        rename_column :real_tech_parts, :realTeamId, :real_team_id

        rename_column :sim_staffs, :simTeamId, :sim_team_id
        rename_column :sim_staffs, :realStaffId, :real_staff_id
        
        rename_column :sim_teams, :ownerId, :user_id

        rename_column :sim_tech_parts, :simTeamId, :sim_team_id
        rename_column :sim_tech_parts, :realTechPartId, :real_tech_part_id
       
    end
    def self.down
    end
end