class SimStaff < ActiveRecord::Base
  belongs_to :sim_team
  belongs_to :real_staff
end
