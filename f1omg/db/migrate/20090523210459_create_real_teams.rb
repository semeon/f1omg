class CreateRealTeams < ActiveRecord::Migration
  def self.up
    create_table :real_teams do |t|
      t.string :id
      t.string :title
      t.string :logourl

      t.timestamps
    end
  end

  def self.down
    drop_table :real_teams
  end
end
