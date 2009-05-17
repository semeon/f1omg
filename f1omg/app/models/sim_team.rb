class SimTeam < ActiveRecord::Base

  validates_presence_of     :ownerId
  validates_presence_of     :title
  validates_presence_of     :money

  validates_length_of       :title, :within => 4..40

  validates_uniqueness_of   :id, :title, :case_sensitive => false

end
