# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090524205600) do

  create_table "permissions", :force => true do |t|
    t.integer  "role_id",    :null => false
    t.integer  "user_id",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "real_staffs", :force => true do |t|
    t.integer  "staff_position_id"
    t.integer  "real_team_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cost"
  end

  create_table "real_teams", :force => true do |t|
    t.string   "title"
    t.string   "logourl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "real_tech_parts", :force => true do |t|
    t.integer  "tech_part_type_id"
    t.integer  "real_team_id"
    t.string   "name"
    t.integer  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "rolename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sim_staffs", :force => true do |t|
    t.integer  "sim_team_id"
    t.integer  "real_staff_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sim_teams", :force => true do |t|
    t.string   "user_id"
    t.string   "title"
    t.integer  "money"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sim_tech_parts", :force => true do |t|
    t.integer  "sim_team_id"
    t.integer  "real_tech_part_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staff_positions", :force => true do |t|
    t.string   "title"
    t.integer  "importance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tech_part_types", :force => true do |t|
    t.string   "title"
    t.integer  "importance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "password_reset_code",       :limit => 40
    t.boolean  "enabled",                                 :default => true
    t.string   "name"
  end

end
