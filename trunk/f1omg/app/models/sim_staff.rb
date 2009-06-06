class SimStaff < ActiveRecord::Base
  belongs_to :sim_team
  belongs_to :real_staff
  delegate :name, :cost, :to => :real_staff, :prefix => false
end

