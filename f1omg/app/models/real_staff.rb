class RealStaff < ActiveRecord::Base
  has_many :sim_staff
  belongs_to :real_team
  belongs_to :staff_position
  delegate :id, :title, :to => :staff_position, :prefix => :position
end
