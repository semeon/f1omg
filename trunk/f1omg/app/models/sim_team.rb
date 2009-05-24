class SimTeam < ActiveRecord::Base

  validates_presence_of     :user_id
  validates_presence_of     :title
  validates_presence_of     :money
  validates_length_of       :title, :within => 4..40
  validates_uniqueness_of   :id, :title, :case_sensitive => false

  has_many :sim_staffs

end
