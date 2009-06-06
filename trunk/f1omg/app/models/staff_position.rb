class StaffPosition < ActiveRecord::Base
  has_many :real_staff
  has_many :sim_staff, :through => :real_staff
end
