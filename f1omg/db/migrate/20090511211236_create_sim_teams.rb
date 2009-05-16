class CreateSimTeams < ActiveRecord::Migration
  def self.up
    create_table :sim_teams do |t|
      t.string :id
      t.string :ownerId
      t.string :title
      t.integer :money

      t.timestamps
    end
  end

  def self.down
    drop_table :sim_teams
  end
end
